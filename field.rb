

class Field

	attr_accessor :field

	def initialize
		@field = create_field
		
	end

	def create_field
		Array.new(25) {Array.new(50, "-")}
	end

	def draw_field
		@field.each do |row|
			print row.join
			print "\n"
			
		end
	end

end





	