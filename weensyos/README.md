Project 4 - WeensyOS
====================

## Design Overview:

## Collaborators:
Austin Funk

## Conceptual Questions:
1. What is the disadvantage of having an identity mapping between virtual and physical memory? What is the purpose of mapping virtual memory addresses to different physical addresses?

One disadvantage to having an identity mapping is that contiguous memory laid out for a program must then be contiguous for in physical memory as well, leading to inflexibility and poor safety measures. By mapping virtual memory to different physical addresses, we can smoothly allocate memory for our programs which appears to be contiguous for them but allocated however we want in our physical memory (improving memory usage) while also protecting other programs from malicious jump write-ins from other programs at the same time due to the uncertain nature of how the physical memory is actually laid out!

2. How does a new page table get prepared for a new process? Talk both about processes born from fork() and those not born from fork().

For a process not born from fork(), the program simply initializes the next available page and then copys the mappings from the kernel's page table as a baseline, after which the program maps the new process' stack, heap, data, and code onto the page table. For those born from fork(), the mappings are copied from the parent process. If a page is user-acessible, then it is mapped to a different physical address than the parent process' page in order to maintain separate heaps, stacks, and data. Otherwise, the physical address is mapped to the same place as the parent's page table. In both cases, the map function allocates pages for the page tables for levels 1-3 automatically.

3. During the normal execution of the process, how does the process refer to its memory? Go through an example of translating a virtual memory address to an actual physical memory address.

First, the process receives a virtual memory address that it has to dereference. The virtual address contains the information necessary to traverse through the different page tables to reach the physical memory address that needs to be dereferenced in the different bits that comprises the virtual address. Although different architectures will have different bit amounts and lengths and page table amounts per process, for this example we will assume a chip using the x86-64 architecture. In this architecture, bits 47-39 hold the index in the L4 page tabe that stores the L3 page table to access, bits 38-30 hold the index in the L3 page table that stores the L2 page table to access, bits 29-21 hold the index in the L2 page table that stores the L1 page table to access, and bits 20-11 hold the index of the L1 page table where part of the actual phyical address is stored. Bits 47-12 of the address in the L1 page table are used to make the respective bits of the physical location (with the remaining 12 bits of the page table address used to store permissions) and the last 12 bits are taken from the offset bits of the virtual memory address to refer to a specific location in the page specified by the address in the L1 page table. So for an address like 0x0000'0090'0025, we access index 0 for the L4 table, the 0 index for the L3 table, the 0 index for the L2 table, index 900 (in hex) for the L1 table, and then we combine bits 47-12 from the result of the L1 table with the offset of 0x025. It's through this long process that the page table finally arrives at the translated physical memory address, though through hardware optimizations, caches, and chip logic, this process is greatly shortened!

4. Upon exiting, what kind of resources have to be cleaned up and freed?

For a process to exit cleanly, it must first go through its page table and free every page that was accessible to it (besides the console), essentially marking that the page is not being used anymore by the process. The pages that need to be freed are used to store the data, stack, heap, code, and the page tables that store the addresses of the pages themselves. This means that the the pages for the other processes and the kernel must remain untouched! Finally the process should mark itself as free.

## Extra Credit attempted:

None :(

## How long did it take to complete WeensyOS?

25 hours
