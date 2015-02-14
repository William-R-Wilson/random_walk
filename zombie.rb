class Zombie

	attr_accessor :position

	def initialize(x,y)
		@position = [x, y]
	end

	def get_direction
		direction = rand(1..4)
	end

	def move
		m = get_direction
		if m == 1
			unless position[0] == 24
				@position[0] += 1
			end
		elsif m == 2
			unless position[0] == 0
				@position[0] -= 1
			end
		elsif m == 3
			unless @position[1] == 49
				@position[1] += 1
			end
		elsif m == 4
			unless @position[1] == 0
		  	@position[1] -= 1
		  end
		else 
			puts "whoops!"
		end
	end

end



