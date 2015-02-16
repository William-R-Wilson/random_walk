

class Field

	attr_accessor :field

	def initialize(x,y)
		@field = create_field(x,y)
		
	end

	def create_field(x,y)
		Array.new(x) {Array.new(y, "-")}
	end

	def draw_field
		@field.each do |row|
			print row.join
			print "\n"
			
		end
	end
#end class
end







	