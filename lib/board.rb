require 'colorize'

class Board
  attr_accessor :board

  def initialize
    @board = Array.new(6) { Array.new(7, "open") }
  end

  def drop_piece()
  end



  def display_board
  end


end
