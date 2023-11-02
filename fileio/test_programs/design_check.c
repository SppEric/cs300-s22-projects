

#include <stdio.h>
#include <stdlib.h>
#include "../io300.h"
// Runs the design check code

int main(int argc, char *argv[]) {
    // Allocate memory
    void* buffer = malloc(8);

    // Run design check code
    struct io300_file* testFile = io300_open("test_files/tiny.txt", "tiny!"); 
    ssize_t r = io300_read(testFile, buffer, 5); // assume buffer is at least 5 bytes
    ssize_t w = io300_write(testFile, "aaa", 3); 
    r = io300_read(testFile, buffer, 2);
    ssize_t s = io300_seek(testFile, 12);
    w = io300_write(testFile, "aaa", 3); 
    r = io300_readc(testFile);
    io300_close(testFile);

    // Clean up memory and files
    free(buffer);
    return 0;
}