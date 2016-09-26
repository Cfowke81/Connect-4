require "spec_helper"
require "colorize"
RSpec.describe Player do

  let(:player_one) {Player.new("red", "Chris")}
  let(:player_two) {Player.new("blue", "Jen")}

  describe "#game_piece"
    it "assigns a red piece to the player" do
      expect(player_one.game_piece).to eq("O".red)
    end

    it "assigns a blue piece to the player" do
      expect(player_two.game_piece).to eq("O".blue)
    end

end
