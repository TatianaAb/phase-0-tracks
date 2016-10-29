# New employee file
# Ask the new employee the following questions.

def questionnaire 

 puts "What is your name?"
 emp_name=gets.chomp

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

 puts "Do you have any allergies?"
 allergies = gets.chomp

 until allergies == "done" || allergies == "sunshine"
  puts "Please indicate another allergies if any or type done if finished "
  end 

 # If the employee got their age right, 
 # and is willing to eat garlic bread or 
 # sign up for insurance, the result is “Probably not a vampire.”

 r = 'Probably not a vampire.' if age && (g_eater || ins)

 # If the employee got their age wrong, 
 # and hates garlic bread or waives insurance,
 # the result is “Probably a vampire.”

 r = 'Probably a vampire' if (!age && (!g_eater || !ins)) || allergies == "sunshine"
  
# If the employee got their age wrong, 
# hates garlic bread, and doesn’t want insurance, 
# the result is “Almost certainly a vampire.”

 r = 'Almost certainly a vampire' if !age && !g_eater && !ins 
  
# Even if the employee is an amazing liar otherwise,
# anyone going by the name of “Drake Cula” or “Tu Fang” 
# is clearly a vampire, because come on. In that case, 
# you should print “Definitely a vampire.”

 r = "Definitely a vampire!" if emp_name == "Drake Cula" || emp_name == "Tu Fang" 

 puts r

# Otherwise, print “Results inconclusive.”
 if r 
 puts r
 else puts "Results inconclusive."
 end 
end

puts "How many employees will be processed?"
emp_number = gets.chomp.to_i

until emp_number == 0
  questionnaire
  emp_number -= 1
end  