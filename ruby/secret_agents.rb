# Create an encrypt method
# Take each character of a string 
# and replace it with a next character.
# Unless it is a space character then do nothing 
# to that character.
# In the case when character is "z" then start with "a".

def encrypt(str)
 i=0
 output=""
 while i < str.length 
   if str[i] == " "
     output+=" "
   elsif str[i] == "z"
     output += "a"    
   else
    output += str[i].next
   end
  i += 1
  end
 output
end

# p encrypt("abc fer")

# Create a decrypt method.
# Take each character of a string 
# and replace it with character before it. 
# Unless it is a space character then do nothing 
# to that character.
# In the case when character is "a" then start with "z".

def decrypt(str)
 alphabet = "abcdefghijklmnopqrstuvwxyz"
 output = ""
 i = 0
 while i<str.length
  char = str[i]
  if str[i] == " "
     output+=" "
  elsif str[i] == "a"
     output += "z"    
  else 
   b = alphabet.index(char) - 1
   output += alphabet[b]
  end
  i+=1
end
output
end

# p decrypt("hey there")
# p encrypt("zed")
# p decrypt("ared")
# p decrypt(encrypt("swordfish"))

# Release 4 nested method calls
# It works because parent method 
# is called upon the output of the nested method.

# Release 5
# Ask user for choice
# Ask for password 
# Based on user's choice choose how to handle the password.
# Return either encrypted or decrypted password.  

puts "Would you like decrypt or encrypt your password?"
choice = gets.chomp
puts "password?"
password = gets.chomp
 if choice == "decrypt"
   puts decrypt(password)
 elsif choice == "encrypt"
   puts encrypt(password)
 end   
 puts "Thank you!"