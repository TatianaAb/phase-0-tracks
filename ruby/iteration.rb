# Release 0

def our_method
 puts "This is test for our method!"
 yield("successfully!", "message")
end

our_method {|word_1, word_2| puts "If you see this #{word_2}
our method run #{word_1}"}

# Release 1

friends_cast_a = ["Rachel", "Ross", "Chandler", "Joey", "Monica", "Phoebe"]

puts "Before <.each>:"
p friends_cast_a

puts "After <.each>:"

friends_cast_a.each do |name|
  puts name.upcase
  name.upcase
end

p friends_cast_a

puts "After <.map!>:"

friends_cast_a.map! do |name|
  puts name.upcase
  name.upcase
end

p friends_cast_a

friends_cast_h = {

"Rachel" => "Jennifer Aniston",
"Ross" => "David Schwimmer",
"Chandler" => "Metthew Perry",
"Joey" => "Matt LeBlanc",
"Monica" => "Courteney Cox",
"Phoebe" => "Lisa Kudrow"
}

puts "Hash before <.each>:"

p friends_cast_h

puts "Hash after <.each>:"

friends_cast_h.each do |name, actor|
  puts name.upcase, actor.downcase
  name.upcase
end

p friends_cast_h

# Release 2

array = ["dog", "cat", "Fred", "45"]

array.reject {|x| x.length > 3 }

p array

array.find_all {|x| x.include?("d")}

p array

array.select {|x| x.to_i > 30}

p array

array.delete_if {|x| x == "Fred"}

p array

hash = { 
  font_size: 10, 
  font_family: "Arial",
  color: "red"
  
}

hash.reject {|k,v| v.to_i < 9 }

p hash

hash.find_all {|k,v| v.to_s.include?("r")}

p hash

hash.select {|k| k.to_s.include?("font")}

p hash

hash.delete_if {|k, v| v.to_s.length < 4}

p hash


