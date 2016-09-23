# the first class I'll need is the Board class
# this will be responsible for storing the player's pieces in the correct column
# the board will be mapped via rows and columns stored in an array of arrays
# methods that will be in this class:
# column_occupied - will check if player can drop their piece into their column
#

# the second class I'll need will run the game, for now it will be call Game
# players will be prompted to input their name
# this class will be responsible for only the elements of playing the game:
# tracking turns
# player wins
# stalemate
# prompting next turn

# there will possibly be a need to have a player 1 and player 2 class to track
# their moves

# another class needed will be to display the board in terminal, Display.

# curretly I think the classes will operate like this:
# Board (holds all the columns/row values) --->
# when a player makes a move Board shares the updated values with Display --->
# Game runs using the other classes to prompt for the player's turns, displaying
# the board after a move is made, and determining which player has won
