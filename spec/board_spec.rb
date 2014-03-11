require "./lib/board"

describe Board do 

	it "should initialize an empty board array" do
		player = double :player
		board = Board.new(player)
		expect(board.rows).to eq(Array.new(10) { Array.new(10) {' '}})
	end

	it "should return four ship that occupy one space" do
		player = double :player
		board = Board.new(player)
		board.addships
		expect(board.rows[0][0]).to eq('s')
		expect(board.rows[2][0]).to eq('s')
		expect(board.rows[4][4]).to eq('s')
		expect(board.rows[3][2]).to eq('s')
	end


	it "should register the shot if it's a hit" do
		player = double :player
		board = Board.new(player)
		board.addships
		expect(board.register_shot([2, 0])).to eq('x')
		expect(board.register_shot([9, 1])).to eq('o')
	end


end


