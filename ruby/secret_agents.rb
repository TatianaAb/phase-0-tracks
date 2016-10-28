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
     i+=1
     next
   else
    output += str[i].next
   end
  i += 1
  end
 output
end

p encrypt("abc fer")

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
     i+=1
     next
  else 
   b = alphabet.index(char) - 1
   output += alphabet[b]
  end
  i+=1
end
output
end

p decrypt("hey there")