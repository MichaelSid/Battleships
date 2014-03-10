require "./lib/board"

describe Board do 

	it "should initialize an empty board array" do
		player = double :player
		board = Board.new(player)
		expect(board.rows).to eq(Array.new(10) { Array.new(10) })
	end

	it "should register the shot at the passed coordinates" do
		player = double :player
		board = Board.new(player)
		expect(board.register_shot("B5")).to eq(["B", "5"])
	end





end


