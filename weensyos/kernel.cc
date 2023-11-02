#include "kernel.hh"
#include "k-apic.hh"
#include "k-vmiter.hh"
#include <atomic>

// kernel.cc
//
//    This is the kernel.


// INITIAL PHYSICAL MEMORY LAYOUT
//
//  +-------------- Base Memory --------------+
//  v                                         v
// +-----+--------------------+----------------+--------------------+---------/
// |     | Kernel      Kernel |       :    I/O | App 1        App 1 | App 2
// |     | Code + Data  Stack |  ...  : Memory | Code + Data  Stack | Code ...
// +-----+--------------------+----------------+--------------------+---------/
// 0  0x40000              0x80000 0xA0000 0x100000             0x140000
//                                             ^
//                                             | \___ PROC_SIZE ___/
//                                      PROC_START_ADDR

#define PROC_SIZE 0x40000       // initial state only

proc ptable[NPROC];             // array of process descriptors
                                // Note that `ptable[0]` is never used.
proc* current;                  // pointer to currently executing proc

#define HZ 100                  // timer interrupt frequency (interrupts/sec)
static std::atomic<unsigned long> ticks; // # timer interrupts so far


// Memory state
//    Information about physical page with address `pa` is stored in
//    `pages[pa / PAGESIZE]`. In the handout code, each `pages` entry
//    holds an `refcount` member, which is 0 for free pages.
//    You can change this as you see fit.

pageinfo pages[NPAGES];


[[noreturn]] void schedule();
[[noreturn]] void run(proc* p);
void exception(regstate* regs);
uintptr_t syscall(regstate* regs);
void memshow();


// kernel(command)
//    Initialize the hardware and processes and start running. The `command`
//    string is an optional string passed from the boot loader.

static void process_setup(pid_t pid, const char* program_name);

void kernel(const char* command) {
    // Initialize hardware.
    init_hardware();
    log_printf("Starting WeensyOS\n");

    // Initialize timer interrupt.
    ticks = 1;
    init_timer(HZ);

    // Clear screen.
    console_clear();

    // (re-)Initialize the kernel page table.
    for (vmiter it(kernel_pagetable); it.va() < MEMSIZE_PHYSICAL; it += PAGESIZE) {
        if (it.va() == 0) {
            // nullptr is inaccessible even to the kernel
            it.map(it.va(), 0x0);
        }
        else if (it.va() < PROC_START_ADDR && it.va() != CONSOLE_ADDR) {
            // Virtual address is before the start of application code and not the console address
            it.map(it.va(), PTE_P | PTE_W);
        }
        else {
            it.map(it.va(), PTE_P | PTE_W | PTE_U);
        } 
    }

    // Set up process descriptors.
    for (pid_t i = 0; i < NPROC; i++) {
        ptable[i].pid = i;
        ptable[i].state = P_FREE;
    }
    if (command && program_loader(command).present()) {
        process_setup(1, command);
    } else {
        process_setup(1, "allocator");
        process_setup(2, "allocator2");
        process_setup(3, "allocator3");
        process_setup(4, "allocator4");
    }

    // Switch to the first process using run().
    run(&ptable[1]);
}


// kalloc(sz)
//    Kernel memory allocator. Allocates `sz` contiguous bytes and
//    returns a pointer to the allocated memory (the physical address of
//    the newly allocated memory), or `nullptr` on failure.
//
//    The returned memory is initialized to 0xCC, which corresponds to
//    the x86 instruction `int3` (this may help you debug). You can
//    reset it to something more useful.
//
//    On WeensyOS, `kalloc` is a page-based allocator: if `sz > PAGESIZE`
//    the allocation fails; if `sz < PAGESIZE` it allocates a whole page
//    anyway.
//
//    The stencil code returns the next allocatable free page it can find,
//    but it never reuses pages or supports freeing memory (you'll have to
//    change this at some point).

void* kalloc(size_t sz) {
    if (sz > PAGESIZE) {
        return nullptr;
    }
    uintptr_t pa = 0x01000;

    // Loop through physical memory to see if there's a spot available
    while (pa < MEMSIZE_PHYSICAL) {
        if (allocatable_physical_address(pa) && !pages[pa / PAGESIZE].used()) {
            pages[pa / PAGESIZE].refcount += 1;
            memset((void*) pa, 0xCC, PAGESIZE); 
            return (void*) pa;
        }
        pa += PAGESIZE;
    }
    
    // Fail if no spot in virtual memory is found
    return nullptr;
}


// kfree(kptr)
//    Frees `kptr`, which must have been previously returned by `kalloc`.
//    If `kptr == nullptr` does nothing.

void kfree(void* kptr) {
    if (kptr != 0x0) {
        pages[(uintptr_t) kptr / PAGESIZE].refcount -= 1;
        assert(pages[(uintptr_t) kptr / PAGESIZE].refcount >= 0);
    }
}


// Declare copy_mappings to use for copying over kernel_pagetable
void copy_mappings(x86_64_pagetable* dst, x86_64_pagetable* src);

// process_setup(pid, program_name)
//    Loads application program `program_name` as process number `pid`.
//    This loads the application's code and data into memory, sets its
//    %rip and %rsp, gives it a stack page, and marks it as runnable.

void process_setup(pid_t pid, const char* program_name) {
    init_process(&ptable[pid], 0);

    // Initialize this process's page table, then memset it to ensure it's empty
    ptable[pid].pagetable = (x86_64_pagetable*) kalloc(PAGESIZE); 
    memset(ptable[pid].pagetable, 0, PAGESIZE);

    // Copy the mappings of kernel_pagetable into this process' newly initialized pagetable
    copy_mappings(ptable[pid].pagetable, kernel_pagetable);

    // Initialize `program_loader`.
    // The `program_loader` is an iterator that visits segments of executables.
    program_loader loader(program_name);

    // Using the loader, we're going to start loading segments of the program binary into memory
    // (recall that an executable has code/text segment, data segment, etc).

    // First, for each segment of the program, we allocate page(s) of memory.
    for (loader.reset(); loader.present(); ++loader) {
        for (uintptr_t a = round_down(loader.va(), PAGESIZE);
             a < loader.va() + loader.size();
             a += PAGESIZE) {
            // `a` is the virtual address of the current segment's page.
            // Allocate some physical memory for the process
            uintptr_t padd = (uintptr_t) kalloc(PAGESIZE);
    
            // If this page is writable then change the permissions in the process' page table 
            if (loader.writable()) {
                vmiter(ptable[pid].pagetable, a).map(padd, PTE_P | PTE_W | PTE_U);
                /* log_printf("For process %d changed VA %p so that it maps to PA %p as writable\n", 
                pid, a, a); */
            }
            else {
                vmiter(ptable[pid].pagetable, a).map(padd, PTE_P | PTE_U);
            }
        }
    }

    // We now copy instructions and data into memory that we just allocated.
    for (loader.reset(); loader.present(); ++loader) {
        void* padd = (void*) vmiter(ptable[pid].pagetable, loader.va()).pa();
        memset(padd, 0, loader.size());
        memcpy(padd, loader.data(), loader.data_size());
    }

    // Set %rip and mark the entry point of the code.
    ptable[pid].regs.reg_rip = loader.entry();

    // We also need to allocate a page for the stack.
    uintptr_t stack_addr = MEMSIZE_VIRTUAL - PAGESIZE;
    uintptr_t padd = (uintptr_t) kalloc(PAGESIZE);
    vmiter(ptable[pid].pagetable, stack_addr).map(padd, PTE_P | PTE_W | PTE_U);
    
    // Set %rsp to the start of the stack.
    ptable[pid].regs.reg_rsp = stack_addr + PAGESIZE;

    // Finally, mark the process as runnable.
    ptable[pid].state = P_RUNNABLE;
}



// exception(regs)
//    Exception handler (for interrupts, traps, and faults).
//    You should *not* have to edit this function.
//
//    The register values from exception time are stored in `regs`.
//    The processor responds to an exception by saving application state on
//    the kernel's stack, then jumping to kernel assembly code (see
//    k-exception.S). That code saves more registers on the kernel's stack,
//    then calls exception(). This way, the process can be resumed right where
//    it left off before the exception. The pushed registers are popped and
//    restored before returning to the process (see k-exception.S).
//
//    Note that hardware interrupts are disabled when the kernel is running.

void exception(regstate* regs) {
    // Copy the saved registers into the `current` process descriptor.
    current->regs = *regs;
    regs = &current->regs;

    // It can be useful to log events using `log_printf`.
    // Events logged this way are stored in the host's `log.txt` file.
    /* log_printf("proc %d: exception %d at rip %p\n",
                current->pid, regs->reg_intno, regs->reg_rip); */

    // Show the current cursor location and memory state (unless this is a kernel fault).
    console_show_cursor(cursorpos);
    if (regs->reg_intno != INT_PF || (regs->reg_errcode & PFERR_USER)) {
        memshow();
    }

    // If Control-C was typed, exit the virtual machine.
    check_keyboard();


    // Actually handle the exception.
    switch (regs->reg_intno) {

    case INT_IRQ + IRQ_TIMER:
        ++ticks;
        lapicstate::get().ack();
        schedule();
        break;                  /* will not be reached */

    case INT_PF: {
        // Analyze faulting address and access type.
        uintptr_t addr = rdcr2();
        const char* operation = regs->reg_errcode & PFERR_WRITE
                ? "write" : "read";
        const char* problem = regs->reg_errcode & PFERR_PRESENT
                ? "protection problem" : "missing page";

        if (!(regs->reg_errcode & PFERR_USER)) {
            panic("Kernel page fault for %p (%s %s, rip=%p)!\n",
                  addr, operation, problem, regs->reg_rip);
        }
        console_printf(CPOS(24, 0), 0x0C00,
                       "Process %d page fault for %p (%s %s, rip=%p)!\n",
                       current->pid, addr, operation, problem, regs->reg_rip);
        current->state = P_BROKEN;
        break;
    }

    default:
        panic("Unexpected exception %d!\n", regs->reg_intno);

    }

    // Return to the current process (or run something else).
    if (current->state == P_RUNNABLE) {
        run(current);
    } else {
        schedule();
    }
}


// syscall(regs)
//    System call handler.
//
//    The register values from system call time are stored in `regs`.
//    The return value, if any, is returned to the user process in `%rax`.
//
//    Note that hardware interrupts are disabled when the kernel is running.

// Headers for helper functions used by syscall.
int syscall_page_alloc(uintptr_t addr);
pid_t syscall_fork();
void syscall_exit();

uintptr_t syscall(regstate* regs) {
    // Copy the saved registers into the `current` process descriptor.
    current->regs = *regs;
    regs = &current->regs;

    // It can be useful to log events using `log_printf`.
    // Events logged this way are stored in the host's `log.txt` file.
    /* log_printf("proc %d: syscall %d at rip %p\n",
                  current->pid, regs->reg_rax, regs->reg_rip); */

    // Show the current cursor location and memory state (unless this is a kernel fault).
    console_show_cursor(cursorpos);
    memshow();

    // If Control-C was typed, exit the virtual machine.
    check_keyboard();

    // Actually handle the exception.
    switch (regs->reg_rax) {

    case SYSCALL_PANIC:
        panic(nullptr); // does not return

    case SYSCALL_GETPID:
        return current->pid;

    case SYSCALL_YIELD:
        current->regs.reg_rax = 0;
        schedule(); // does not return

    case SYSCALL_PAGE_ALLOC:
        return syscall_page_alloc(current->regs.reg_rdi);

    case SYSCALL_FORK:
        return syscall_fork();

    case SYSCALL_EXIT:
        syscall_exit();
        schedule(); // does not return

    default:
        panic("Unexpected system call %ld!\n", regs->reg_rax);

    }

    panic("Should not get here!\n");
}

// syscall_page_alloc(addr)
//    Helper function that handles the SYSCALL_PAGE_ALLOC system call.
//    This function implement the specification for `sys_page_alloc`
//    in `u-lib.hh` (but in the stencil code, it does not - you will
//    have to change this).

int syscall_page_alloc(uintptr_t addr) {
    // Allocate the next available page
    uintptr_t padd = (uintptr_t) kalloc(PAGESIZE);
    if (addr < PROC_START_ADDR || addr >= MEMSIZE_VIRTUAL || padd == 0 || addr % PAGESIZE != 0) {
        // Failed when trying to allocate
        return -1;
    }

    // Try to add the newly allocated page to the curret process' pagetable 
    if (vmiter(current->pagetable, addr).try_map(padd, PTE_P | PTE_W | PTE_U) != -1)  {
        // Initialize memory
        memset((void*) padd, 0, PAGESIZE);
    }
    else {
        // Failed to map, so free the memory
        kfree((void*) padd);
        return -1;
    }

    return 0;
}

void free_pages(x86_64_pagetable* sz);

// syscall_fork()
//    Handles the SYSCALL_FORK system call. This function
//    implements the specification for `sys_fork` in `u-lib.hh`.
pid_t syscall_fork() {
    // Find the next available pid
    pid_t free_pid = -1;
    
    for (int i = 1; i < NPROC; i++) {
        if (ptable[i].state == P_FREE) {
            free_pid = ptable[i].pid;
            break;
        }
    }

    // Fail if we didn't find any free processes!
    if (free_pid == -1) {return -1;}

    // Copy over the current page table to the new table we're making
    x86_64_pagetable* temp_table = (x86_64_pagetable*) kalloc(PAGESIZE);

    // Check if kalloc succeeded
    if (temp_table == 0) {
        return -1;
    }
    
    // Initialize memory
    memset(temp_table, 0, PAGESIZE);
    
    // Initialize an iterator for dst
    vmiter dst_iter = vmiter(temp_table, 0);

    for (vmiter src_iter(current->pagetable, 0); src_iter.va() < MEMSIZE_VIRTUAL; src_iter += PAGESIZE) {
        // Declare helper variables
        uintptr_t vadd = src_iter.va();
        uintptr_t padd;

        uint64_t vadd_perms = src_iter.perm();
        uint64_t is_present = 0b001 & vadd_perms;
        uint64_t is_writable = 0b010 & vadd_perms;
        uint64_t is_accessible = 0b100 & vadd_perms;

        // Map physical addresses
        if (vadd == 0) {
            // Map the nullpointer edgecase
            padd = 0;
            dst_iter.map(padd, 0x0);
        }
        else if (is_accessible && vadd != CONSOLE_ADDR) {
            if (!is_writable) { // Read-only, so share the memory page
                // Define padd for logging purposes
                padd = src_iter.pa();
                if (dst_iter.try_map(src_iter.pa(), vadd_perms) != -1) {
                    pages[src_iter.pa() / PAGESIZE].refcount += 1;
                }
                else {
                    // Map failed, so clean up the process and then return -1
                    free_pages(temp_table);
                    return -1;
                }
            }
            else { // Writable, so create a seperate region of memory for the new process
                // Allocate a new physical page for new_ptable
                padd = (uintptr_t) kalloc(PAGESIZE);
                
                // Check if kalloc failed
                if (padd == 0) {
                    free_pages(temp_table);
                    return -1;
                }

                // Map address and perms
                if (dst_iter.try_map(padd, vadd_perms) != -1) {
                    // Since map worked, copy data from page in curr_ptable to new_ptable
                    memcpy((void*) padd, (void*) src_iter.pa(), PAGESIZE);
                }
                else {
                    // try_map failed, so clean up process, free the allocated memory, then return -1
                    kfree((void*) padd);
                    free_pages(temp_table);
                    return -1;
                }
            }

            // Print mapped addresses and perms
            /* log_printf("During fork: VA %p maps to PA %p with PERMS %p, %p, %p\n", vadd, padd, is_present,
            is_writable, is_accessible); */
        }
        else {
            // Not user-acessible, so use same physical address
            if (dst_iter.try_map(src_iter.pa(), vadd_perms) == -1) {
                // The mapping failed!
                free_pages(temp_table);
                return -1;
            };
        }
        
        // Increment dst_iter
        dst_iter += PAGESIZE;
    }

    // Now that we're finished, fill in the fields of new_process
    // Change the state of the process to be runnnable
    ptable[free_pid].state = P_RUNNABLE;

    // Set our page table
    ptable[free_pid].pagetable = temp_table;

    // Set the return registers for the child and parent processes
    memcpy(&ptable[free_pid].regs, &current->regs, sizeof(current->regs));
    ptable[free_pid].regs.reg_rax = 0;
    current->regs.reg_rax = free_pid;

    // log_printf("Exited fork successfully!\n");
    return free_pid;
}

// syscall_exit()
//    Handles the SYSCALL_EXIT system call. This function
//    implements the specification for `sys_exit` in `u-lib.hh`.
void syscall_exit() {
    // log_printf("Began an exit call \n");

    free_pages(current->pagetable);

    // Set the process to be free
    current->state = P_FREE;
     
    // log_printf("Left the exit call successfully! \n");
}

// schedule
//    Picks the next process to run and then run it.
//    If there are no runnable processes, spins forever.
//    You should *not* have to edit this function.

void schedule() {
    pid_t pid = current->pid;
    for (unsigned spins = 1; true; ++spins) {
        pid = (pid + 1) % NPROC;
        if (ptable[pid].state == P_RUNNABLE) {
            run(&ptable[pid]);
        }

        // If Control-C was typed, exit the virtual machine.
        check_keyboard();

        // If spinning forever, show the memviewer.
        if (spins % (1 << 12) == 0) {
            memshow();
            log_printf("%u\n", spins);
        }
    }
}


// run(p)
//    Runs process `p`. This involves setting `current = p` and calling
//    `exception_return` to restore its page table and registers.
//    You should *not* have to edit this function.

void run(proc* p) {
    assert(p->state == P_RUNNABLE);
    current = p;

    // Check the process's current pagetable.
    check_pagetable(p->pagetable);

    // This function is defined in k-exception.S. It restores the process's
    // registers then jumps back to user mode.
    exception_return(p);

    // should never get here
    while (true) {
    }
}


// memshow()
//    Draws a picture of memory (physical and virtual) on the CGA console.
//    Switches to a new process's virtual memory map every 0.25 sec.
//    Uses `console_memviewer()`, a function defined in `k-memviewer.cc`.
//    You should *not* have to edit this function.

void memshow() {
    static unsigned last_ticks = 0;
    static int showing = 0;

    // switch to a new process every 0.25 sec
    if (last_ticks == 0 || ticks - last_ticks >= HZ / 2) {
        last_ticks = ticks;
        showing = (showing + 1) % NPROC;
    }

    proc* p = nullptr;
    for (int search = 0; !p && search < NPROC; ++search) {
        if (ptable[showing].state != P_FREE
            && ptable[showing].pagetable) {
            p = &ptable[showing];
        } else {
            showing = (showing + 1) % NPROC;
        }
    }

    extern void console_memviewer(proc* vmp);
    console_memviewer(p);
}

// Function copied from lab5 to copy kernel_pagetable's mappings for the individual process page tables
void copy_mappings(x86_64_pagetable* dst, x86_64_pagetable* src) {
    // Copy all virtual memory mappings from `src` into `dst`
    // for addresses in the range [0, MEMSIZE_VIRTUAL).
    // You may assume that `dst` starts out empty (has no mappings).
    
    // For our grading purposes, use the following line to print out
    // the physical and virtual addresses you're mapping, as well as the 
    // present, writable, and user-accessible permission bits (in that order): 
    // log_printf("VA %p maps to PA %p with PERMS %p, %p, %p\n", ...);
    //
    // Make sure to use the exact same format string above, but fill
    // out the rest of the line.

    // After this function completes, for any virtual address `va` with
    // 0 <= va < MEMSIZE_VIRTUAL, `dst` and `src` should map that va
    // to the same physical address with the same permissions.

    // Initialize an iterator for dst
    vmiter dst_iter = vmiter(dst, 0);

    for (vmiter src_iter(src, 0); src_iter.va() < PROC_START_ADDR; src_iter += PAGESIZE) {
        // Declare helper variables
        uintptr_t vadd = src_iter.va();
        uintptr_t padd;
        if (src_iter.va() == 0) {
            padd = 0;
        }
        else {
            padd = src_iter.pa();
        }
        uint64_t vadd_perms = src_iter.perm();
        uint64_t is_present = 0b001 & vadd_perms;
        uint64_t is_writable = 0b010 & vadd_perms;
        uint64_t is_accessible;
        // Make all addresses above the process starting address not user accessible by default
        // since we will change that when we allocate memory for our specific process page tables 
        if (src_iter.va() > PROC_START_ADDR) {
            is_accessible = 0;
        }
        else {
            is_accessible = 0b100 & vadd_perms;
        }

        // Map address and perms
        dst_iter.map(padd, vadd_perms);

        // Print mapped addresses and perms
        /* log_printf("VA %p maps to PA %p with PERMS %p, %p, %p\n", vadd, padd, is_present,
        is_writable, is_accessible); */
        
        // Increment dst_iter
        dst_iter += PAGESIZE;
    }
}

// free_pages()
//    Frees the pages for the current process. This differs
//    from syscall_exit() because it doesn't set the state to P_FREE.
void free_pages(x86_64_pagetable* pt) {

    // log_printf("Began a free_pages call \n");
    // Parse through the pages of the L4 table and free the correct pages
    for (vmiter it(pt, 0); it.va() < MEMSIZE_VIRTUAL; it += PAGESIZE) {
        // If the page in the L4 table is user accessible and not the console page then free it
        if (it.user() && it.va() != CONSOLE_ADDR) {
            kfree(it.kptr());
        }
    }

    // Parse through the pages of the L1-3 tables and free the correct pages
    for (ptiter it(pt); it.active(); it.next()) {
            kfree(it.kptr());
    }
    
    // Free the page holding the page table
    kfree((void*) pt);
    // log_printf("Left the free_pages call successfully! \n");
}