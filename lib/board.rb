class Board
	def initialize(player)
		@player = player
		@rows = Array.new(10) { Array.new(10) {' '}}
		@rows[3][5] = 's'
	end 

	def owner
		@player.name
	end

	def register_shot(at_coordinates)
		#at_coordinates = B5 == [1][4]

		columns = {"A" => 1, "B" => 2, "C" => 3, "D" => 4, "E" => 5, "F" => 6, "G" => 7,
		"H" => 8, "I" => 9, "J" => 10}

		value = at_coordinates.chars
		


		
	end

	def rows
		@rows
	end

end
