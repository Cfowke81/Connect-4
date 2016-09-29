require "spec_helper"

RSpec.describe Board do
  let(:board) { Board.new(7, 6) }
  let(:player) { Player.new('red', 'Chris') }
  let(:piece) { Piece.new(player) }
  let(:piece_2) { Piece.new(player) }

  describe "initialize" do
    it "builds a board of 7 columns and 6 rows" do
      expect(board.columns.size).to eq(6)
      expect(board.columns[0].size).to eq(7)
      expect(board.columns[1].size).to eq(7)
      expect(board.columns[2].size).to eq(7)
      expect(board.columns[3].size).to eq(7)
      expect(board.columns[4].size).to eq(7)
      expect(board.columns[5].size).to eq(7)
    end
  end

  describe "#drop_piece" do
    context "takes a player and column as input" do
      it "fills first permissable empty space in column" do
        col_index = 0

        # column
        # bottom row 0 [ nil, nil, nil, nil ] top row 4
        first_row = 0

        # occupy space for test purposes only
        board[col_index][first_row].piece = piece

        # bottom row 0 [ X, nil, nil, nil ] top row 4
        # next open row should be row index 1
        next_open_row = first_row + 1
        expect(board[col_index][next_open_row].empty?).to be true

        # drop piece
        board.drop_piece(player, col_index)

        # bottom row 0 [ X, X, nil, nil ] top row 4
        # next open row should now be filled
        expect(board[col_index][next_open_row].empty?).to be false
      end

      it "if successful, returns location of new piece as column index, row index" do
        col_index = 0
        first_row = 0
        board[col_index][first_row].piece = piece

        expect(board.drop_piece(player, col_index)).to eq [col_index, first_row + 1]
        # column 0 - that doesn't change
        # so the big quesiton is what row we land in?
        # if row 0 (first_row) is occupied, we should land in the next row, row 1
        # which is `first_row + 1`



      end
    end
  end

  describe "#stalemate?" do
    it "has no empty spaces when board completely occupied" do
      7.times do |col_index|
        board.drop_piece(player, col_index)
      end
      expect(board.stalemate?).to eq(true)
    end
  end

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

    expect(board.drop_piece(player, 2)).to eq(printout)
    end
  end
end
