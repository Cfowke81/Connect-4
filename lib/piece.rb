class Piece
  def initialize(player)
    @player = player
    @color = @player.color
  end

  def display_color
    if @color == "red"
      "O".red
    elsif @color == "blue"
      "O".blue
    end
  end
end
