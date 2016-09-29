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

# curretly I think the classes will operate like this:
# Board (holds all the columns/row values) --->
# when a player makes a move Board shares the updated values with Display --->
# Game runs using the other classes to prompt for the player's turns, displaying
# the board after a move is made, and determining which player has won
require 'pry'
require 'colorize'
require_relative './player'
require_relative './piece'
require_relative './board'
require_relative './board_space'

class Game
  attr_reader :board
  attr_accessor :player_one, :player_two

  def initialize
    @board = Board.new
    @player_one = Player.new('red', 'player_one_name')
    @player_two = Player.new('blue', 'player_two_name')
  end

  while board.empty? && !board.winner?
    print "What row do you want to play?"
    row_index = gets.chomp.to_i

    print "What column do you want to play?"
    col_index = gets.chomp.to_i

    board.drop_piece(player, row_index, col_index)
  end

  def setup
    colors = ['r', 'b']

    puts "Hello players, please decide who will pick their color first."
	  puts ""
    puts "Player 1, what is your name?"
    player_one_name = gets.chomp
	  puts ""
    puts "#{player_one_name} please select your color: 'r' for red or 'b' for blue"
    player_one_color = gets.chomp

    while player_one_color != 'r' && player_one_color != 'b'
      puts "#{player_one_name} you have made an invalid selection, please select your color: 'r' for red or 'b' for blue"
      player_one_color = gets.chomp
    end

    puts ""
    puts "Player 2, what is your name?"
    player_two_name = gets.chomp
	  puts ""

    if player_one_color == 'r'
      puts "#{player_one_name}, you selected red"
      puts ""
      puts "#{player_two_name}, you have been assigned blue"
      puts ""
    elsif player_one_color == 'b'
      puts "#{player_one_name}, you selected blue"
      puts ""
      puts "#{player_two_name}, you have been assigned red"
      puts ""
    end

    colors.shuffle!
    	if colors.first == 'r'
    		puts "Red will go first"
    	elsif colors.first == 'b'
    		puts "Blue will go first"
    	end
  end

end
