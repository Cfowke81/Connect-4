require 'colorize'
require_relative './player'

class Piece
  attr_reader :color, :player

  def initialize(player)
    @player = player # Justin / Blue
    @color = @player.color # Justin's color, which is Blue
  end

  def display_color
    if @color == 'red'
      'O'.red
    elsif @color == 'blue'
      'O'.blue
    end
  end
end
