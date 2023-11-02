#include "mbstrings.h"

/* mbslen - multi-byte string length
 * - Description: returns the number of UTF-8 code points ("characters")
 * in a multibyte string. If the argument is NULL or an invalid UTF-8
 * string is passed, returns -1.
 *
 * - Arguments: A pointer to a character array (`src`), consisting of UTF-8
 * variable-length encoded multibyte code points.
 *
 * - Return: returns the actual number of UTF-8 code points in `src`. If an
 * invalid sequence of bytes is encountered, return -1.
 *
 * - Hints:
 * UTF-8 characters are encoded in 1 to 4 bytes. The number of leading 1s in the
 * highest order byte indicates the length (in bytes) of the character. For
 * example, a character with the encoding 1111.... is 4 bytes long, a character
 * with the encoding 1110.... is 3 bytes long, and a character with the encoding
 * 1100.... is 2 bytes long. Single-byte UTF-8 characters were designed to be
 * compatible with ASCII. As such, the first bit of a 1-byte UTF-8 character is
 * 0.......
 *
 * You will need bitwise operations for this part of the assignment!
 */

size_t mbslen(const char* bytes) {
    if (bytes == NULL) { // Return error if no arguments were inputted
        return -1;
    }
    
    // Define variables
    int i = 0; 
    int len = 0;

    // Define bitmask
    unsigned char four_byte_bitmask = 0b11110000;
    unsigned char three_byte_bitmask = 0b11100000;
    unsigned char two_byte_bitmask = 0b11000000;
    unsigned char subsequent_bitmask = 0b10000000;

    while (*(bytes + i) != '\0') {
        unsigned char byte = bytes[i];
        int increment = 0;

        if ((byte & four_byte_bitmask) == four_byte_bitmask) {
            increment = 3;
        }
        else if ((byte & three_byte_bitmask) == three_byte_bitmask) {
            increment = 2;
        }
        else if ((byte & two_byte_bitmask) == two_byte_bitmask) {
            increment = 1;
        }
        else {
            increment = 0;
        }

        for (int j = 0; j < increment; j++) {
            if ((bytes[i + j] & subsequent_bitmask) != 0b10000000) { // Subsequent byte isn't valid!
                return -1;
            }
        }

        len++;

        i += increment + 1;
    }

    return len;
}
