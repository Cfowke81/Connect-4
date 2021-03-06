require 'pry'
require 'colorize'
require_relative './player'
require_relative './piece'
require_relative './board_space'

class Board
  attr_accessor :board

  def initialize(num_columns, num_rows)
    @board = []
    num_columns.times do
      column = []
      num_rows.times do
        column << BoardSpace.new
      end
      @board << column
    end
  end

  def columns
    @board
  end

  # #2 how does this work in a turn?
  #should player represent the player name and game piece color?
  def drop_piece(player, col_index)
    # inputs: player and column

    # player selects column - they do not select row
    # piece lands in first open slot in column
    # by default until the first row is occupied by a player's piece that is where the piece will drop
    # return where the piece landed
	  # @board[row_index][col_index].player = player

    empty_space = find_empty_space(col_index)
    if empty_space
      empty_space.piece = Piece.new(player)
    else
      puts "column is full"
    end
  end

  def find_empty_space(col_index)
    @board[col_index].each do |space|
      return space if space.empty?
    end
    false
  end

  def stalemate?
    @board.each do |column|
      column.each do |space|
        return true if space.occupied?
      end
    end
    return false
  end

  def winner?

  end

  def display
    printout = ''
    @board.each_with_index do |column, row|
      spots = []
      column.each do |space|
        if space.nil?
          spots << '-'
        else
          spots << space
        end
      end
      printout << "|" + spots.join(' ') + "|" + "\n"
    end
    printout + "---------------\n" + "||           ||\n"
  end
end
