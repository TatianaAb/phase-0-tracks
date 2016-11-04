
first_name = gets.chomp
last_name = gets.chomp

def transform_name(name)
  name = name.downcase.chars
  name.map do |x|
    if "aeiou".include? x
    vowel(x)
    else
    non_vowel(x)
    end
  end  
end

def vowel(c)
  vowels = "aeiou"
    if c == "u"
      c.replace("a")
    else 
      c = vowels[vowels.index(c).next]
    end
end    

def non_vowel(c)
  non_vowel = "abcdefghijklmnopqrstuvwxyz".delete("aeiou")
    if c == "z"
      c.replace("b")
    else 
      c = non_vowel[non_vowel.index(c).next]
    end
end    

alias_first_name = transform_name(first_name).join.capitalize
alias_last_name = transform_name(last_name).join.capitalize

p alias_last_name + " " + alias_first_name

