require 'colorize'
require 'pry'

class Board

  def initialize
    @board = Array.new(6) { Array.new(7, nil) }
    # number of rows
    # number of columns
    # make the array of arrays (similar to how Dan does in video)
    # #1 set this up
    [
      [ nil, nil, nil ],
      [ nil, nil, nil ],
      [ nil, nil, nil ]
    ]
  end

  def rows
    @board
  end

  # #2 how does this work in a turn?
  def drop_piece(player, row_index, col_index)
    # whose turn?

    # drop color piece into `slot` where they want to play
    # (how to have player "select" slot on board? what is a slot?)

    # bottom row > first empty row "all the way down" 
    # (how do i find the first empty row?)
	  @board[row_index][col_index] = player
  end

  def empty?
    @board.each do |row|
      row.each do |space|
        return true if space.nil?
      end
    end
    return false
  end

  def winner?

  end

  def display
    printout = ''
    @board.each_with_index do |row, index|
      spots = []
      row.each do |space|
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

Board.new
