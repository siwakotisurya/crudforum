class Student

def initialize
@name = Array.new
end

def enter_data(name)
@name << name
end

def get_data
@name.each { |name| puts name}
	
end 


end

s= Student.new

flag= true

while flag
	puts "Welcome to student entry section"
	puts"press 1 to enter data 2 to view data 3 to exit"

choice = gets.to_i

case choice
	when 1
name = gets
s.enter_data(name)

when 2 
s.get_data


when 3
	flag =false
	end

end
