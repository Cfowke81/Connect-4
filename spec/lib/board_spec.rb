require "spec_helper"

RSpec.describe Board do
  let(:board) { Board.new }

  describe "initialize" do
    it "builds a board of 6 rows and 7 columns" do
      expect(board.rows.size).to eq(6)
      expect(board.rows[0].size).to eq(7)
      expect(board.rows[1].size).to eq(7)
      expect(board.rows[2].size).to eq(7)
      expect(board.rows[3].size).to eq(7)
      expect(board.rows[4].size).to eq(7)
      expect(board.rows[5].size).to eq(7)
    end
  end

  # describe "#drop_piece" do
  #   it "allows player to 'drop' their gamepiece into the board" do
  #   end
  # end

  describe "#empty_spaces?" do
    it "has empty space when the game is started" do
      expect(board.empty_spaces?).to eq(true)
    end

    it "has no empty spaces when completely occupied" do
      6.times do |index|
        7.times do |col_index|
          board.drop_piece(player, index, col_index)
        end
      end

      expect(board.empty_spaces?).to eq(false)
    end
  end
  # end
  describe "#display" do
    it "displays the connect four board" do
      printout =
      "|- - - - - - -|\n" +
      "|- - - - - - -|\n" +
      "|- - - - - - -|\n" +
      "|- - - - - - -|\n" +
      "|- - - - - - -|\n" +
      "|- - - - - - -|\n" +
      "---------------\n" +
      "||           ||\n"

      expect(board.display).to eq(printout)
    end

    it "displays player's gamepiece" do
      board_printout =
      "|- - - - - - -|\n" +
      "|- - - - - - -|\n" +
      "|- - - - - - -|\n" +
      "|- - - - - - -|\n" +
      "|- - - - - - -|\n" +
      "|- - O - - - -|\n" +
      "---------------\n" +
      "||           ||\n"
      
    expect(board.drop_piece()).to eq(printout)
    end
  end
end
