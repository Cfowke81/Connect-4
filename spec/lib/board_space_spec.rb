require 'spec_helper'

describe BoardSpace do
	let(:space) { BoardSpace.new }
	let(:player) { Player.new('red', 'Chris') }
	let(:piece) { Piece.new(player) }

	describe "#occupied?" do
		it "is occupied if a player has played their game piece" do
			space.piece = piece

			expect(space.occupied?).to be(true)
			expect(space).to be_occupied
		end

		it "is not occupied if a player has not played there" do
			expect(space.occupied?).to be(false)
			expect(space).to_not be_occupied
		end
	end

	describe "#empty?" do
		it "returns true if piece is nil" do
			expect(space.piece).to be nil
			expect(space.empty?).to be true 
		end
	end
end
