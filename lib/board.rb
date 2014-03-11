class Board
	def initialize(player)
		@player = player
		@rows = Array.new(10) { Array.new(10) {' '}}
	end 

	def addships
		@rows[0][0] = 's'
		@rows[2][0] = 's'
		@rows[4][4] = 's'
		@rows[3][2] = 's'
	end


	def owner
		@player.name
	end

	def register_shot(at_coordinates)
		x = at_coordinates[0]
		y = at_coordinates[1] 
		@rows[x][y] = @rows[x][y] == 's' ? 'x' : 'o'
	end

	def rows
		@rows		
	end

end
