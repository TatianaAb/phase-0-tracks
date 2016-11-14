class Game 

 attr_reader :guess
 attr_accessor :guess_count
 attr_accessor :tries

  def initialize (input)
    @guess_count = 0
    @guess = Array.new(input.length, "_") 
    @tries = []
  end

  def feedback(input, char)
    @guess_count += 1
    
    if input.include?(char)
       i = input.index(char)
       @guess[i]=char
       @guess
      else
      @guess
    end.join(' ')
  end

end 

puts "Please enter a word"
input = gets.chomp.split('')
word = Game.new(input)

while word.guess_count != input.length*2

puts "Guess a word #{word.guess.join(' ')} "
char = gets.chomp
p word.feedback(input, char)
   if word.guess.include?('_') == false
     puts "Congratulation !!! You won in #{word.guess_count} guesses!" 
     break
     elsif word.tries.include?(char)
     p word.tries 
           word.guess_count -= 1
     elsif word.guess_count == input.length*2
    puts "You have reached max number of tries! Try next game"
   end 
word.tries << char   
end   
 