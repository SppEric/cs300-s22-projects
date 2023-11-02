#include "game_setup.h"
#include "game.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef enum {false, true} bool; // Creating boolean type for is_char

// Some handy dandy macros for decompression
#define E_CAP_HEX 0x45
#define E_LOW_HEX 0x65
#define S_CAP_HEX 0x53
#define S_LOW_HEX 0x73
#define W_CAP_HEX 0x57
#define W_LOW_HEX 0x77
#define DIGIT_START 0x30
#define DIGIT_END 0x39

/* Initializes the board struct with walls around the edge of the board.
 * Returns NULL on failure; otherwise returns the pointer to the modified board.
 * Arguments:
 *  - board: a pointer to a board_t
 *  - width: a positive int equal to the desired outer width
 *  - height: a positive int equal to the desired outer height
 */
board_init_status_t initialize_default_board(board_t* board) {
    board->width = 20;
    board->height = 10;
    board->cells = calloc(20 * 10, sizeof(int));

    // Set edge cells!
    // Top and bottom edges:
    for (int i = 0; i < 20; ++i) {
        board->cells[i] = FLAG_WALL;
        board->cells[i + (20 * (10 - 1))] = FLAG_WALL;
    }
    // Left and right edges:
    for (int i = 0; i < 10; ++i) {
        board->cells[i * 20] = FLAG_WALL;
        board->cells[i * 20 + 20 - 1] = FLAG_WALL;
    }

    // Add snake
    board->cells[20 * 2 + 2] = FLAG_SNAKE;

    // Set snake beginning position
    int* starting_data = malloc(sizeof(int));
    *starting_data = board->width * 2 + 2;
    board->snake->head->data = starting_data;
    
    return INIT_SUCCESS;
}

/** Initialize the game struct, with a (potentially-empty) board representation.
 * Arguments:
 *  - `game`: a pointer to the game struct to be initialized.
 *  - `board_rep`: a string representing the initial board. May be empty.
 */
board_init_status_t initialize_game(game_t* game, char* board_rep) {
    // Initialize temporary board and snake
    game->board->cells = NULL;

    game->board->snake->head = malloc(sizeof(node_t));
    game->board->snake->head->data = 0;
    game->board->snake->head->next = NULL;
    game->board->snake->head->prev = NULL;

    // Set beginning score and game state
    game->game_over = 0;
    game->score = 0;

    // Set snake beginning direction
    game->board->snake->direction = INPUT_RIGHT;
    
    // Initialize board
    if (board_rep == NULL) { // Initialize default board
        initialize_default_board(game->board);
    }
    else { // Initialize custom board
        board_init_status_t board_status = decompress_board_str(game->board, board_rep);

        // Check if board was decompressed successfully
        if (board_status != INIT_SUCCESS) {
            return board_status;
        }
    }

    // Place food
    place_food(game->board);

    // Begin game
    return INIT_SUCCESS;
}




// // Helper Functions for decompress_board_str()
// // Takes in a row and column number and returns the index of the cell array
int board_index(board_t* board, int r, int c) {
    return board->width * r + c;
}

// Fills in a set amount of cells in the board of the same type at the given location
void fill_cells(board_t* board, int flag, int amount, int location) {
    for (int i = 0; i < amount; i++) {
        board->cells[location + i] = flag;
        if (flag == 1) { // If putting a snake cell, set snake starting position
            int* starting_data = malloc(sizeof(int));
            *starting_data = location;
            board->snake->head->data = starting_data;
        }
    }
}

// Fills in a row of the board at the given row index using the given row string segment
board_init_status_t fill_row(board_t* board, const char* row_segment, int row, int num_cols) {
    // Initialize helper variables
    int current_col = 0;
    int flag;
    char flag_type;

    for(int i = 0; i < strlen(row_segment); i++) {
        if (!isdigit(row_segment[i])) {
            // Find which flag type to use
            flag_type = row_segment[i];

            switch(flag_type) {
                case 'E': flag = 0; break;
                case 'S': flag = 1; break;
                case 'W': flag = 2; break;
                default: return INIT_ERR_BAD_CHAR;
            }
            
            // Find how many of the flag type to put into the board
            i++; // Increment to the first digit of the number

            // Find beginning and ending indices
            int start_index = i;
            while(isdigit(row_segment[i])) {i++;}
            i--;
            int stop_index = i;

            // Separate number string
            int num_length = stop_index - start_index + 1;
            char num_as_string[num_length + 1];
            num_as_string[num_length] = '\0';
            memcpy(num_as_string, &row_segment[start_index], num_length);
            int num = atoi(num_as_string);

            // Fill board representation with cells
            fill_cells(board, flag, num, board_index(board, row, current_col));
            
            // Increment current_col by amount of added cells
            current_col += num;
        }

        else {
            return INIT_ERR_BAD_CHAR; // Will only occur if first char in row_seg is an int
        }
    }

    if (current_col != num_cols) {
        return INIT_ERR_INCORRECT_DIMENSIONS;
    }

    return INIT_SUCCESS;
}

/** Takes in a string `compressed` and returns a board_t* that contains the
 * matching set of cells that can then be initialized. Arguments:
 *      - board: a pointer to the board that we would like to initialize
 *      - compressed: a string that contains the representation of the board.
 * Note: We assume that the string will be of the following form:
 * B|E5W2E73|E5W2S1E72... To read it, we scan the string row-by-row (delineated
 * by the `|` character), and read out a letter (E, S or W) a number of times
 * dictated by the number that follows the letter.
 */
board_init_status_t decompress_board_str(board_t* board, char* compressed) {
    /** Divide string by '|' locations
     * Note: Variable is called row_segment but for the first token it's actually the
     * dimensions of the board! After this, it's the string segments inbetween "| |"
     */
    char unmodified_compressed[strlen(compressed) + 1]; 
    strcpy(unmodified_compressed, compressed);
    const char* row_segment = strtok(compressed, "|"); 

    int i = 0; // Define index variable
    
    // Check if first char is B
    if (row_segment[i] != 'B') {
        return INIT_ERR_BAD_CHAR;
    }

    // Begin reading row info
    i++; // Begin index at first digit of row number
    while (row_segment[i] != 'x') {i++;} // Go to until 'x'

    // Find end index
    int r_stop_index = i - 1;

    // Isolate row string
    char row_dim[r_stop_index + 1];
    memcpy(row_dim, &row_segment[1], r_stop_index);  
    row_dim[r_stop_index] = '\0';

    // Set number of rows
    int num_rows = atoi(row_dim); 

    // Begin reading column info
    i++; // Begin index at first digit of column number

    // Find beginning and end indices
    int c_start_index = i;
    int c_stop_index = strlen(row_segment);

    // Isolate column string
    int col_num_length = c_stop_index - c_start_index + 1;
    char col_dim[col_num_length + 1];
    col_dim[col_num_length] = '\0';
    memcpy(col_dim, &row_segment[c_start_index], col_num_length);

    // Set number of cols
    int num_cols = atoi(col_dim); 
    
    // Define board members
    board->width = num_cols;
    board->height = num_rows;

    // Confirm row amount in compressed string is same as given number
    // Confirm only one snake in compressed string
    int snake_count = 0;
    int separators = 0;
    for (int j = 0; unmodified_compressed[j] != '\0'; j++) {
        if (unmodified_compressed[j] == '|') {  
            separators++;
        }
        else if (unmodified_compressed[j] == 'S') {
            snake_count += atoi(&unmodified_compressed[j+1]);
        }
    }
    
    if (separators != num_rows) {
        return INIT_ERR_INCORRECT_DIMENSIONS;
    }
    if (snake_count != 1) {
        return INIT_ERR_WRONG_SNAKE_NUM;
    }

    // Sete board memory
    board->cells = calloc(num_cols * num_rows, sizeof(int));

    // Time to finally begin filling the board!
    // Parse through each row segment (row_segment is finally the actual row strings)
    int r = 0; // Define a parsing variable for the rows
    
    row_segment = strtok(NULL, "|");
    
    while (row_segment != NULL) {
        // Fill in the row of the board then increment to the next row index
        board_init_status_t is_row_filled = fill_row(board, row_segment, r, num_cols);
        if (is_row_filled != INIT_SUCCESS) {
            return is_row_filled;
        }
        r++;
        row_segment = strtok(NULL, "|");
    }

    return INIT_SUCCESS;
}