require 'board'
require 'colorize'

class Players

  def initialize(player)
    @player = player
  end

  def player_one
    @player_one = "O".red
  end

  def player_two
    @player_two = "O".blue
  end

end
