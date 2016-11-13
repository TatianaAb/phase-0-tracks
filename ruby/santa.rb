 class Santa
 
 attr_reader :age, :ethnicity
 
 attr_accessor :gender

   def initialize (gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender= gender
    @ethnicity= ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0 
   end

   def speak 
    p "Ho, ho, ho! Haaaappy holidays!" 
   end

   def eat_milk_and_cookies cookie
     puts "That was a good #{cookie}!"  
   end
   
   def celebrate_birthday
    @age += 1
   end
   
   def get_mad_at(deer_name)
    @reindeer_ranking.delete(deer_name)
    @reindeer_ranking << deer_name
   end
   
 end


santa = Santa.new("agender", "black")
p santa.age
p santa.ethnicity
santa.celebrate_birthday
p santa.gender="bigender"
p santa.get_mad_at("Dasher")
santa

# Release 4: Build Many, Many Santas

class Santa

   def initialize 
    example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
    example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
    
    @gender= example_genders[rand(example_genders.count)]
    @ethnicity= example_ethnicities.shuffle.first
    @age = rand(0..140)
    
    puts "Initializing Santa instance gender:#{@gender}, ethnicity #{@ethnicity}, age #{@age}"
   end

end

100.times  {Santa.new}