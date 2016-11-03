# Write a program that will allow an interior designer to enter the details of a given client: the client's name, age, number of children, decor theme, and so on (must be a good mix of string, integer, and boolean data).
# Ask a user for client's information

client_file = {}

puts "Please enter a client's first name"
client_file[:first_name] = gets.chomp 

puts "Please enter a client's last name"
client_file[:last_name] = gets.chomp

puts "Client's gender"
client_file[:gender] = gets.chomp

puts "Client's age"
client_file[:age] = gets.chomp.to_i

puts "Marital status"
client_file[:married] = gets.chomp

puts "Any pets?"
client_file[:pets] = gets.chomp

puts "Decor theme preferences"

client_file[:decor_theme] = gets.chomp

client_file.each {|k,v| puts k,v}

puts "Would you like to make some changes? If so please type criteria otherwise type 'none'"

change = gets.chomp.to_sym




