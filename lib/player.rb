require 'board'
require 'colorize'

class Player
  attr_reader :color, :name

  def initialize(color, name)
    @name = name
    @color = color
  end
end

Player.new("red", "Chris")
