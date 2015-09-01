require "yaml"

class Registration

def initialize
	puts "\nWelcome to customer registration Panel \n\n"
	print "Enter 1 for registration\n"
	p "Enter 2 for viewing Yml data"
	puts "Enter 3 to view yaml file"
	puts "Enter 4 to exit program"
	@name = Array.new
	@contact = Array.new
	@address = Array.new
end

def user_input(name, contact, address)
	@name << "name:"+ name
	@address << address
	@contact << contact
	output = File.new('users.yml','w')
	output.puts YAML.dump(@name)
	output.close
end

def view_input
	@name.each { |tn| puts tn}
	@contact.each { |tc| puts tc}
	@address.each { |ta| puts ta}
end

def yaml_reader
	output = File.new("users.yml",'r')
	loader = YAML.load(output.read)
	output.close
	puts loader
end

end

user_registration = Registration.new

get_again = true

while get_again	 
	name_input = gets
	
    case name_input.to_i
    when 1
    puts "Enter your name only alphabets from a-z are allowed"
	name = gets
	puts "Enter your contact no"
	contact = gets.to_i
	puts "Enter your address"
	address = gets
	user_registration.user_input(name, address, contact)
    when 2
    	user_registration.view_input
    when 3
    	user_registration.yaml_reader
    when 4
    	get_again=false
    end 
end


