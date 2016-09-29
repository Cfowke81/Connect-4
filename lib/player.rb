require 'colorize'
require_relative './board'

class Player
  attr_reader :color, :name

  def initialize(color, name)
    @name = name
    @color = color
  end
end
