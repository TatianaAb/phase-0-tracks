class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times {puts "Woof!"}
  end

  def roll_over
  p "Roll over" 
  end
  
  def dog_years(int)
    int/7
  end

  def yawn
    p "Yawn"
  end

end

spot = Puppy.new

spot.speak(2)
spot.yawn
spot.fetch("toy")
spot.dog_years(45)