require_relative "field.rb"
require_relative "zombie.rb"


class Walk

	attr_accessor :mob, :space

	def initialize
		puts "do you want to customize this run?"
		answer = gets.chomp.downcase
		if answer == "yes"
			puts "Yes!"
			get_config
		elsif answer == "no"
			puts "Starting with defaults"
			@space = Field.new(25, 50)
			@mob = Zombie.new(13,23)
		else
			puts "I didn't recognize that, try again"
			exit
		end
	end

	def get_config
		get_grid_config
		get_mob_config
	end


	def get_grid_config
		puts "please enter the grid height"
		print ">>"
		x = gets.chomp.to_i
		puts "please enter the grid width"
		print ">>"
		y = gets.chomp.to_i
		@space = Field.new(x, y)		
	end

	def get_mob_config
		puts "please enter the starting height for the zombie"
		print ">>"
		x = gets.chomp.to_i
		puts "please enter the starting horizontal position for the zombie"
		print ">>"
		y = gets.chomp.to_i
		@mob = Zombie.new(x,y) 
	end

	def update_mob_position
		a = @mob.position[0]
		b = @mob.position[1]
		@space.field[a][b] = "x"
		@space.draw_field
	end
#end class
end


#this will run the application n times
def run(n)
	w = Walk.new
	w.update_mob_position
	n.times do
		w.mob.move
		w.update_mob_position
	end
end

puts "How many steps should the Zombie take?"
steps = gets.chomp.to_i

run steps