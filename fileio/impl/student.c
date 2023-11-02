#define _GNU_SOURCE
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <string.h>
#include <errno.h>
#include <assert.h>
#include <stdarg.h>

#include "../io300.h"

typedef enum {false, true} bool;

/*
    student.c

    Fill in the following stencils

*/

/*
    When starting, you might want to change this for testing on small files.
*/
#ifndef CACHE_SIZE
#define CACHE_SIZE 4096
#endif

#if(CACHE_SIZE < 4)
#error "internal cache size should not be below 4."
#error "if you changed this during testing, that is fine."
#error "when handing in, make sure it is reset to the provided value"
#error "if this is not done, the autograder will not run"
#endif

/*
   This macro enables/disables the dbg() function. Use it to silence your
   debugging info.

   Use the dbg() function instead of printf debugging if you don't want to
   hunt down 30 printfs when you want to hand in
*/
#define DEBUG_PRINT 0
#define DEBUG_STATISTICS 0

struct io300_file {
    /* read,write,seek all take a file descriptor as a parameter */
    int fd;
    /* this will serve as our cache */
    char *cache;

    // Implementation-specific variables
    int size;
    int file_index; // Index to the location in the file where the read/write head is at
    int cache_index;  // Index to the location in the cache where the read/write head is at
    bool altered; // Boolean that keeps track if the file has been written into
    bool cache_empty; // Boolean that keeps track if what's in the cache is junk or not

    /* Used for debugging, keep track of which io300_file is which */
    char *description;
    /* To tell if we are getting the performance we are expecting */
    struct io300_statistics {
        int read_calls;
        int write_calls;
        int seeks;
    } stats;
};

/*
    Assert the properties that you would like your file to have at all times.
    Call this function frequently (like at the beginning of each function) to
    catch logical errors early on in development.
*/
static void check_invariants(struct io300_file *f) {
    assert(f != NULL);
    assert(f->cache != NULL);
    assert(f->fd >= 0);
    assert(f->file_index >= 0);
    assert(f->cache_index >= 0);
    assert(f->size >= 0);
}

/*
    Wrapper around printf that provides information about the
    given file. You can silence this function with the DEBUG_PRINT macro.
*/
static void dbg(struct io300_file *f, char *fmt, ...) {
    (void)f; (void)fmt;
#if(DEBUG_PRINT == 1)
    static char buff[300];
    size_t const size = sizeof(buff);
    int n = snprintf(
        buff,
        size,
        // TODO: Add the fields you want to print when debugging
        "{desc:%s, } -- ",
        f->description
    );
    int const bytes_left = size - n;
    va_list args;
    va_start(args, fmt);
    vsnprintf(&buff[n], bytes_left, fmt, args);
    va_end(args);
    printf("%s", buff);
#endif
}


struct io300_file *io300_open(const char *const path, char *description) {
    if (path == NULL) {
        fprintf(stderr, "error: null file path\n");
        return NULL;
    }

    int const fd = open(path, O_RDWR | O_CREAT, S_IRUSR | S_IWUSR);
    if (fd == -1) {
        fprintf(stderr, "error: could not open file: `%s`: %s\n", path, strerror(errno));
        return NULL;
    }

    struct io300_file *const ret = malloc(sizeof(*ret));
    if (ret == NULL) {
        fprintf(stderr, "error: could not allocate io300_file\n");
        return NULL;
    }

    ret->fd = fd;
    ret->cache = malloc(CACHE_SIZE);
    if (ret->cache == NULL) {
        fprintf(stderr, "error: could not allocate file cache\n");
        close(ret->fd);
        free(ret);
        return NULL;
    }
    ret->description = description;
    
    // Initializing file members
    ret->cache_index = 0;
    ret->file_index = 0;
    struct stat file_stats;
    stat(path, &file_stats);
    ret->size = file_stats.st_size; // io300_filesize wasn't working for me :(
    ret->altered = false;
    ret->cache_empty = true;

    // Initializing stats
    ret->stats.read_calls = 0;
    ret->stats.write_calls = 0;
    ret->stats.seeks = 0;


    check_invariants(ret);
    dbg(ret, "Just finished initializing file from path: %s\n", path);
    return ret;
}


int io300_seek(struct io300_file *const f, off_t const pos) {
    check_invariants(f);
    f->stats.seeks++;

    // Check if seeking in invalid location
    if (pos < 0 || pos > f->size) {
        return (off_t) -1;
    }

    // Check if seek is inside cache already
    if (f->file_index <= pos && pos < f->file_index + CACHE_SIZE) {
        f->cache_index = pos - f->file_index;
        return pos;
    }
    else { // If cache does not contain index, flush cache then seek next location
        io300_flush(f);
        f->file_index = pos;
        return lseek(f->fd, pos, SEEK_SET);
    }
}


int io300_close(struct io300_file *const f) {
    check_invariants(f);

#if(DEBUG_STATISTICS == 1)
    printf("stats: {desc: %s, read_calls: %d, write_calls: %d, seeks: %d}\n",
            f->description, f->stats.read_calls, f->stats.write_calls, f->stats.seeks);
#endif
    // Flush out cache then tie up loose ends
    io300_flush(f);
    close(f->fd);
    free(f->cache);
    free(f);
    return 0;
}


off_t io300_filesize(struct io300_file *const f) {
    check_invariants(f);
    struct stat s;
    int const r = fstat(f->fd, &s);
    if (r >= 0 && S_ISREG(s.st_mode)) {
        return s.st_size;
    } else {
        return -1;
    }
}


int io300_readc(struct io300_file *const f) {
    check_invariants(f);
    f->stats.read_calls++;
    
    // Declare return variable
    unsigned char c;

    // Check if trying to read past the end of the file
    if (f->file_index + f->cache_index >= f->size) {
        return -1;
    }

    // Check if cache read/write head is outside of the cache
    if (f->cache_index == CACHE_SIZE) {
        // Flush and then fill the cache again
        io300_flush(f);
    }
    // Check if cache is empty
    if (f->cache_index == 0) {
        read(f->fd, f->cache, CACHE_SIZE);
        //dbg(f, "cache after read is: %s \n", f->cache);
    }

    // Read from the cache
    c = f->cache[f->cache_index];
    f->cache_index++;
    
    return (unsigned int) c; // Cast to ensure leading 0s
}


int io300_writec(struct io300_file *f, int ch) {
    check_invariants(f);
    f->stats.write_calls++;
    f->altered = true;

    // Declare character to be written
    char const c = (char)ch;

    // Check if cache read/write head is outside of the cache
    if (f->cache_index >= CACHE_SIZE) {
        // Flush and then fill the cache again
        io300_flush(f);
    }
    
    // Check if size needs to increase
    if (f->cache_index + f->file_index > f->size) {
        f->size = f->cache_index + f->file_index;
    }

    // Write to the cache
    f->cache[f->cache_index] = c;
    f->cache_index++;

    return (unsigned char) c;
}


ssize_t io300_read(struct io300_file *const f, char *const buff, size_t const sz) {
    check_invariants(f);
    f->stats.read_calls++;

    // Define helper variable
    size_t remaining_sz = sz;
    size_t fixed_sz = sz;

    // Check if trying to read past the end of the file
    if (f->file_index + f->cache_index + sz >= f->size) {
        if (f->file_index + f->cache_index > f->size) {
            return -1;
        }
        else {
            fixed_sz = f->size - (f->file_index + f->cache_index);
            remaining_sz = fixed_sz;
        }
    }

    // Check if cache is empty
    if (f->cache_empty) {
        read(f->fd, f->cache, CACHE_SIZE);
        f->cache_empty = false;
    }

    int buffer_index = 0;
    // Check if trying to read past the cache
    while (f->cache_index + remaining_sz >= CACHE_SIZE) {
        // Read the current cache into the buffer
        int amt_added = CACHE_SIZE - f->cache_index;
        remaining_sz -= amt_added;

        // Fill the buffer then read the next amount
        memcpy(buff + buffer_index, f->cache + f->cache_index, amt_added);
        buffer_index += amt_added;

        // Flush the cache and then increment file index
        f->cache_index = CACHE_SIZE;
        io300_flush(f);
        f->file_index += CACHE_SIZE;
        
        // Refill the cache
        read(f->fd, f->cache, CACHE_SIZE);
        f->cache_empty = false;
    }

    memcpy(buff + buffer_index, f->cache + f->cache_index, remaining_sz);
    f->cache_index += remaining_sz;
    
    return fixed_sz;
}


ssize_t io300_write(struct io300_file *const f, const char *buff, size_t const sz) {
    check_invariants(f);
    f->stats.write_calls++;

    // Define helper variables
    int remaining_sz = sz;
    int buffer_index = 0;

    // Check if trying to write past the cache
    while (f->cache_index + remaining_sz >= CACHE_SIZE) {
        // Write the overflowed amount of buffer into the file
        int remaining_space = CACHE_SIZE - f->cache_index;
        memcpy(f->cache + f->cache_index, buff + buffer_index, remaining_space);
        buffer_index += remaining_space;
        f->cache_index += remaining_space;
        f->altered = true;
        io300_flush(f);
        remaining_sz -= remaining_space;
    }
    
    // Write the remaining amount of buffer into the cache
    memcpy(f->cache + f->cache_index, buff + (sz - remaining_sz), remaining_sz);
    f->cache_index += remaining_sz;

    // Raise altered flag
    f->altered = true;

    return sz;
}


int io300_flush(struct io300_file *const f) {
    check_invariants(f);

    // Write out the contents of the cache into the file 
    if (f->altered) {
        lseek(f->fd, f->file_index, SEEK_SET);
        write(f->fd, f->cache, f->cache_index);
        f->altered = false;

        // Adjust read/write indices for the file
        f->file_index += f->cache_index;
    }

    f->cache_index = 0;
    f->cache_empty = true;

    return 0;
}
