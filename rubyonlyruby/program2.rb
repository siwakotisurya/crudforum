# Let take in user inputs from our programs 


# Create a ruby program that ask user for the task at hand.
# if selected to  takes in student names stores it. 
# if selected to then Dispays it when asked for. 


# SOLUTION
# REQUIREMTN 
# class student names 
# display 

class StudentHandler
  attr_accessor :names
  def initialize
    @names = Array.new
  end

  def take_in_name(name)
    @names << name
  end

  def display_names
    @names.each { |name| puts name }
  end

end

### IMPLEMENTATION
student_handler = StudentHandler.new
flag = true

while flag==true
  puts "Enter you choice (1 for adding, 2 for viewing, any other for exiting)"
  choice = gets

  case choice.to_i
  when 1
    puts "Enter the name to enter in to database"
    name = gets
    student_handler.take_in_name name
  when 2
    student_handler.display_names
  else
    flag = false
  end
end