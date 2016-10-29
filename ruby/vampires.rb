# New employee file
# Ask the new employee the following questions.

puts "What is your name?"
name=gets.chomp

puts "How old are you?" 
age=gets.chomp.to_i

puts "What year were you born?"
yob = gets.chomp.to_i

# If an employee gives an age and a year of birth that don’t line up
# mathematically, that employee might be a vampire.

if age == 2016 - yob
  age = true
  else
  age=false
end   

puts "Our company cafeteria serves garlic bread. 
Should we order some for you?"
g_eater=gets.chomp

g_eater == "yes" ? g_eater = true: g_eater=false

puts "Would you like to enroll in the company’s 
health insurance? "
ins=gets.chomp

ins=="yes" ? ins = true: ins=false
  
# If the employee got their age right, 
# and is willing to eat garlic bread or 
# sign up for insurance, the result is “Probably not a vampire.”
case
when age && (g_eater || ins)
 puts "Probably not a vampire."

# If the employee got their age wrong, 
# and hates garlic bread or waives insurance,
# the result is “Probably a vampire.”

when !age && (!g_eater || !ins)
 puts "Probably a vampire"

# If the employee got their age wrong, 
# hates garlic bread, and doesn’t want insurance, 
# the result is “Almost certainly a vampire.”

when !age && !g_eater && !ins
 puts "Almost certainly a vampire."

# Even if the employee is an amazing liar otherwise,
# anyone going by the name of “Drake Cula” or “Tu Fang” 
# is clearly a vampire, because come on. In that case, 
# you should print “Definitely a vampire.”

when name == "Drake"
  puts "Definitely a vampire!"

# Otherwise, print “Results inconclusive.”
else
  puts "Results inconclusive"
end  

