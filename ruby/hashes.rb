# Clients database program for designers - allows an interior designer
# to enter the details of a given client.

client_file = {}

# Ask a user for client's first name and store it in client's file hash:

puts "Please enter a client's first name"
client_file[:first_name] = gets.chomp 

# Ask a user for client's last name and store it in client's file hash:

puts "Please enter a client's last name"
client_file[:last_name] = gets.chomp

# Ask a user for client's gender and store it in client's file hash:

puts "Client's gender"
client_file[:gender] = gets.chomp

# Ask a user for client's age and store it in client's file hash:

puts "Client's age"
client_file[:age] = gets.chomp.to_i

# Ask a user for client's marital status and store it in client's file hash:

puts "Marital status"
client_file[:married] = gets.chomp

# Ask a user if client has any pets and store it in client's file hash:

puts "Any pets?"
client_file[:pets] = gets.chomp

# Ask a user for client's decor preferences and store it in client's file hash:

puts "Decor theme preferences"

client_file[:decor_theme] = gets.chomp

# Print clients file with all provided information:

puts client_file

# Ask a user if he wants to change any information and ask for key if so otherwise type 'none':

puts "Would you like to make some changes? If so please type criteria otherwise type 'none'"

change = gets.chomp.to_sym

# If answer 'none' print file or replace value of key with new information provided:  

if change == :none
    puts "New client added!"
  else 
    puts "Please enter new information"
    updated_info = gets.chomp
      if change == :age
         updated_info.to_i
      end
    client_file[change] = updated_info
    client_file.each {|k,v| puts k,v}
end  



