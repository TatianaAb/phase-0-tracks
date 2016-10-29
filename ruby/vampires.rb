# New employee file
# Ask the new employee the following questions.

puts "What is your name?"
name=gets.chomp

puts "How old are you?" 
age=gets.chomp

puts "What year were you born?"
year = gets.chomp

puts "Our company cafeteria serves garlic bread. 
Should we order some for you?"
g_eater=gets.chomp

puts "Would you like to enroll in the company’s 
health insurance? "
ins=gets.chomp

# If the employee got their age right, 
# and is willing to eat garlic bread or 
# sign up for insurance, the result is “Probably not a vampire.”

if age && (g_eater || ins)
 puts "Probably not a vampire."

# If the employee got their age wrong, 
# and hates garlic bread or waives insurance,
# the result is “Probably a vampire.”

if !age && !(g_eater || ins)
 puts "Probably a vampire"

# If the employee got their age wrong, 
# hates garlic bread, and doesn’t want insurance, 
# the result is “Almost certainly a vampire.”

if !age && !g_eater && !ins
 puts "Almost certainly a vampire."

# Even if the employee is an amazing liar otherwise,
# anyone going by the name of “Drake Cula” or “Tu Fang” 
# is clearly a vampire, because come on. In that case, 
# you should print “Definitely a vampire.”

case name
 when "Drake Cula", "Tu Fang" 
   puts "Definitely a vampire!"
 end  

# Otherwise, print “Results inconclusive.”
