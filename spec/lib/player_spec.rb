require 'spec_helper'

RSpec.describe Player do

  let(:player_one) {Player.new("red", "Chris")}
  let(:player_two) {Player.new("blue", "Jen")}

  describe "initialize" do
    it "creates a Player object" do
      expect(player_one).to eq(player_one)
      expect(player_two).to eq(player_two)
    end
  end


end
