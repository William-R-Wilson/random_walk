require_relative "field.rb"
require_relative "zombie.rb"

class Walk

	attr_accessor :mob, :space

	def initialize
		@space = Field.new
		@mob = Zombie.new(13,23)
	end

	def update_mob_position
		a = @mob.position[0]
		b = @mob.position[1]
		@space.field[a][b] = "x"
		@space.draw_field
	end

end

w = Walk.new
w.update_mob_position
1000.times do
	w.mob.move
	w.update_mob_position
end



	