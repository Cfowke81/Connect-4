require 'spec_helper'


RSpec.describe Piece do

  let(:player_one) {Player.new("red", "Chris")}
  let(:player_two) {Player.new("blue", "Jen")}

  describe "#display_color" do
    it "displays a colorized game piece" do
      expect(player_one.display_color).to eq("O".red)
      expect(player_two.display_color).to eq("O".blue)
    end
  end
end
