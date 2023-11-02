#include "game.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "linked_list.h"
#include "mbstrings.h"

typedef enum {false, true} bool; // Creating boolean type for is_opposite for clarity

/** Updates the game by a single step, and modifies the given game struct
 * accordingly. Arguments:
 * - game: a pointer to the current game struct.
 * - input: the next input.
 * - growing: 0 if the snake does not grow on eating, 1 if it does.
 */
void update(game_t* game, input_key_t input, int growing) {
    // `update` should update game to reflect new state. If in the updated
    // position, the snake runs into a wall or itself, it will not move and
    // game_over will be 1. Otherwise it will be moved to the new position. If
    // the snake eats food, the game score increases by 1. This function does
    // not handle updating the high_scores string. This assumes that the board
    // is surrounded by walls so it does not handle the case where a snake runs
    // off the board.

    // Check if the game is over
    if (game->game_over == 1) {
        return;
    }

    // Define some common variables
    input_key_t current_direction = game->board->snake->direction;
    int* head_position = game->board->snake->head->data;

    if (growing == 1) { //Logic for if in growing mode

        // Change head_position to be referencing only the value and not
        // head->data directly. The non-growing version of snake requires this variable
        // to be pointing directly at data, but in growing this causes errors.
        // I know it's ugly, but it works. Sue me :D
        int head_data_value = *(int*)game->board->snake->head->data;
        int* head_position = &head_data_value;

        // Determine if the input is directly opposite to current direction
        bool is_opposite = (current_direction == INPUT_DOWN && input == INPUT_UP) ||
        (current_direction == INPUT_UP && input == INPUT_DOWN) ||
        (current_direction == INPUT_LEFT && input == INPUT_RIGHT) || 
        (current_direction == INPUT_RIGHT && input == INPUT_LEFT);

        // Determine whether to change directions or not
        if (input != INPUT_NONE && !is_opposite) {
            game->board->snake->direction = input;
            current_direction = input;
        }

        // Set ate_food to false as default
        bool ate_food = false;

        // Check movement directions
        if (current_direction == INPUT_RIGHT) {    
            *head_position += 1;    

            if (*(game->board->cells + *head_position) == FLAG_WALL || 
            *(game->board->cells + *head_position) == FLAG_SNAKE) {
                // Check if snake is running into tail at prior frame or not
                if (*(int*) get_last(game->board->snake->head) != *head_position) {
                    game->game_over = 1;
                    return;
                }
            }
            else if (*(game->board->cells + *head_position) == FLAG_FOOD) {
                // Update ate food
                ate_food = true;

                // Place another food and update the score
                place_food(game->board);
                game->score += 1;
            }
        }

        else if (current_direction == INPUT_LEFT) {
            *head_position -= 1;

            if (*(game->board->cells + *head_position) == FLAG_WALL || 
            *(game->board->cells + *head_position) == FLAG_SNAKE) {
                // Check if snake is running into tail at prior frame or not
                if (*(int*) get_last(game->board->snake->head) != *head_position) {
                    game->game_over = 1;
                    return;
                }
                node_t* last_node = game->board->snake->head;
                while(last_node->prev) {
                    last_node = last_node->prev;
                }
            }
            else if (*(game->board->cells + *head_position) == FLAG_FOOD) {
                // Update ate food
                ate_food = true;

                // Place another food and update the score
                place_food(game->board);
                game->score += 1;
            }
        }

        else if (current_direction == INPUT_DOWN) {
            *head_position += game->board->width;

            if (*(game->board->cells + *head_position) == FLAG_WALL || 
            *(game->board->cells + *head_position) == FLAG_SNAKE) {
                // Check if snake is running into tail at prior frame or not
                if (*(int*) get_last(game->board->snake->head) != *head_position) {
                    game->game_over = 1;
                    return;
                }
            }
            else if (*(game->board->cells + *head_position) == FLAG_FOOD) {
                // Update ate food
                ate_food = true;

                // Place another food and update the score
                place_food(game->board);
                game->score += 1;
            }
        }

        else if (current_direction == INPUT_UP) {
            *head_position -= game->board->width;

            if (*(game->board->cells + *head_position) == FLAG_WALL || 
            *(game->board->cells + *head_position) == FLAG_SNAKE) {
                // Check if snake is running into tail at prior frame or not
                if (*(int*) get_last(game->board->snake->head) != *head_position) {
                    game->game_over = 1;
                    return;
                }
            }
            else if (*(game->board->cells + *head_position) == FLAG_FOOD) {
                // Update ate food
                ate_food = true;

                // Place another food and update the score
                place_food(game->board);
                game->score += 1;
            }
        }



        // If snake ate food, don't remove last cell
        if (!ate_food) { 
            // Remove last snake cell
            int* temp = remove_last(&game->board->snake->head);
            *(game->board->cells + *temp) = FLAG_PLAIN_CELL;

            // Update snake metadata to mirror board
            *(game->board->cells + *head_position) = FLAG_SNAKE;
            insert_first(&game->board->snake->head, head_position, sizeof(int));
            
            // Free removed data
            free(temp);
        }
        else {
            // Update snake metadata to mirror board
            *(game->board->cells + *head_position) = FLAG_SNAKE;
            insert_first(&game->board->snake->head, head_position, sizeof(int));
        }
    }

    else { // Logic for when snake isn't growing
        // Determine whether to change directions or not
        if (input != INPUT_NONE) {
            game->board->snake->direction = input;
            current_direction = input;
        }

        if (current_direction == INPUT_RIGHT) {    
            *head_position += 1;    

            if (*(game->board->cells + *head_position) == FLAG_WALL) {
                game->game_over = 1;
            }
            else if (*(game->board->cells + *head_position) == FLAG_FOOD) {
                *(game->board->cells + *head_position - 1) = FLAG_PLAIN_CELL;
                *(game->board->cells + *head_position) = FLAG_SNAKE;
                place_food(game->board);
                game->score += 1;
            }
            else {
                *(game->board->cells + *head_position - 1) = FLAG_PLAIN_CELL;
                *(game->board->cells + *head_position) = FLAG_SNAKE;
            }
        }

        else if (current_direction == INPUT_LEFT) {
            *head_position -= 1;

            if (*(game->board->cells + *head_position) == FLAG_WALL) {
                game->game_over = 1;
            }
            else if (*(game->board->cells + *head_position) == FLAG_FOOD) {
                *(game->board->cells + *head_position + 1) = FLAG_PLAIN_CELL;
                *(game->board->cells + *head_position) = FLAG_SNAKE;
                place_food(game->board);
                game->score += 1;
            }
            else {
                *(game->board->cells + *head_position + 1) = FLAG_PLAIN_CELL;
                *(game->board->cells + *head_position) = FLAG_SNAKE;
            }
        }

        else if (current_direction == INPUT_DOWN) {
            *head_position += game->board->width;

            if (*(game->board->cells + *head_position) == FLAG_WALL) {
                game->game_over = 1 ;
            }
            else if (*(game->board->cells + *head_position) == FLAG_FOOD) {
                *(game->board->cells + *head_position - game->board->width) = FLAG_PLAIN_CELL;
                *(game->board->cells + *head_position) = FLAG_SNAKE;
                place_food(game->board);
                game->score += 1;
            }
            else {
                *(game->board->cells + *head_position - game->board->width) = FLAG_PLAIN_CELL;
                *(game->board->cells + *head_position) = FLAG_SNAKE;
            }
        }

        else if (current_direction == INPUT_UP) {
            *head_position -= game->board->width;

            if (*(game->board->cells + *head_position) == FLAG_WALL) {
                game->game_over = 1;
            }
            else if (*(game->board->cells + *head_position) == FLAG_FOOD) {
                *(game->board->cells + *head_position + game->board->width) = FLAG_PLAIN_CELL;
                *(game->board->cells + *head_position) = FLAG_SNAKE;
                place_food(game->board);
                game->score += 1;
            }
            else {
                *(game->board->cells + *head_position + game->board->width) = FLAG_PLAIN_CELL;
                *(game->board->cells + *head_position) = FLAG_SNAKE;
            }
        }
    }
}

/** Sets a random space on the given board to food.
 * Arguments:
 *  - `board`: a pointer to the board to be updated.
 */
void place_food(board_t* board) {
    /* DO NOT MODIFY THIS FUNCTION */
    int food_index = generate_index(board->width * board->height);
    if (*(board->cells + food_index) == FLAG_PLAIN_CELL) {
        *(board->cells + food_index) = FLAG_FOOD;
    } else {
        place_food(board);
    }
    /* DO NOT MODIFY THIS FUNCTION */
}

/** Prompts the user for their name and saves it in the given buffer.
 * Arguments:
 *  - `write_into`: a pointer to the buffer to be written into.
 */
void read_name(char* write_into) {
    // Prompt user for name info
    printf("%s", "Name >");
    fflush(0);
    memset(write_into, 0, 1000);
    read(0, write_into, 1000);

    if (write_into[0] != '\n') { // If a name was written
        char* to_remove = strstr(write_into, "\n");
        strncpy(to_remove, "\0", sizeof(char));
        return;
    }
    else { // If nothing was written
        char* error_message = "Name Invalid: must be longer than 0 characters.\n";
        printf("%s", error_message);
        read_name(write_into);
    }

}

/** Cleans up on game over â€” should free any allocated memory so that the
 * LeakSanitizer doesn't complain.
 * Arguments:
 *  - `game`: a pointer the current game struct.
 */
void teardown(game_t* game) {
    // Free board memory 
    free(game->board->cells);
    
    // Free snake memory
    while (game->board->snake->head->next) {
        free(remove_last(&game->board->snake->head));
    }
    free(remove_first(&game->board->snake->head));
}