# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<swapcase>
# => “InVeStIgAtIoN”

puts "iNvEsTiGaTiOn".swapcase

# "zom".<replace "zoom"> or <insert >
# => “zoom”

puts "zom".replace "zoom"
puts "zom".insert 1,'o'

# "enhance".<center (15)>
# => "    enhance    "

puts "enhance".center(15)

# "Stop! You’re under arrest!".<upcase>
# => "STOP! YOU’RE UNDER ARREST!"

puts "Stop! You’re under arrest!".upcase

# "the usual".< << " suspects" >
#=> "the usual suspects"
puts "the usual" << " suspects"
puts "the usual" + " suspects"

# " suspects".<prepend "the usual">
# => "the usual suspects"
puts " suspects".prepend "the usual"

# "The case of the disappearing last letter".<chop>
# => "The case of the disappearing last lette"

puts "The case of the disappearing last letter".chop

# "The mystery of the missing first letter".<slice 1..-1>
# => "he mystery of the missing first letter"

puts "The mystery of the missing first letter".slice 1..-1
puts "The mystery of the missing first letter".delete "T"

# "Elementary,    my   dear        Watson!".<squeeze>
# => "Elementary, my dear Watson!"

puts "Elementary,    my   dear        Watson!".squeeze

# "z".<ord>
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
puts "z".ord

# "How many times does the letter 'a' appear in this string?".<count "a">
# => 4
puts "How many times does the letter 'a' appear in this string?".count "a"