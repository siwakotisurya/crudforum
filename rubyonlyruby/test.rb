class Student

	attr_accessor :name

	def initialize
		@name = name
		puts "Welcome to Student Entry section"
		puts "Enter 1 to enter student detail"
	end

	def enter_choice
    one = gets.to_i




	end

	def enter_data
	
	


loop do

	if one == 1 

			puts "Enter the name"

			@name = gets.to_s

			puts "New entry #{@name} sucessfully added"

		end
		break if one == 2

	
	end	
	end 

	def display_data
	
	end	

	end

	user = Student.new

	user.enter_data

