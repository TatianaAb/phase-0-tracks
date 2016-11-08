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

allias_names = {}

first_name = ""
last_name = ""

while first_name != "quit" || last_name != "quit"
    
  puts "Please type first name or 'quit' to exit a program."
  first_name =gets.chomp
    
    if first_name == "quit" 
      break
        else
          puts "Please type last name or 'quit' to exit a program."
          last_name=gets.chomp
            if last_name == "quit"
               break
                 else
                   alias_first_name = transform_name(first_name).join.capitalize
                   alias_last_name = transform_name(last_name).join.capitalize
                   p allias_full_name = alias_last_name + " " + alias_first_name
                   allias_names[first_name + ' ' + last_name]= allias_full_name
            end
    end
end

allias_names.each {|k,v| puts "#{k} is also known as #{v}"}
