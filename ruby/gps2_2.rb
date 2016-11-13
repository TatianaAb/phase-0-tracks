# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty hash called 'list'
  # split input based on items separated by spaces 
  # set default quantity to 1
  # print the list to the console [can you use one of your other methods here?]
# output: [hash with item => quantity pairs]

def list_creator(items)
  list = {}
  items.split.each do |item|
   list[item] = 1
  end 
list
end

# Method to add an item to a list
# input: takes in hash, item name and optional quantity
# steps: 1.check if any items currently exist in a list
# 2. If hash contains an item then update qty
#     else add item to the list with qty. 
# output: updated 'list' hash

def add_item (list, item, qty=1)

  if list[item]
    list[item]+=qty
  else
    list[item]=qty
  end   
  list

end

p add_item(my_list, 'lemonade', 2)
p add_item(my_list, 'tomato', 3)
p add_item(my_list, 'onion', 1)
p add_item(my_list, 'ice cream', 4)

# Method to remove an item from the list
# input: take 'list' as a hash an item as a string
# steps: delete identified item
# output: print updated 'list' hash

def remove_item (list, item)
   
  list.delete(item) if list.include?(item)
  list 

end

# Method to update the quantity of an item
# input: takes 'list' as a hash, item name and qty 
# steps: set qty to inputed qty
# output: print updated list as hash

def update_list(list, item, qty=1)

  list[item]=qty
  list
end

# Method to print a list and make it look pretty
# input: list as hash
# steps: iterate trough hash and print each key-value pair  
# output: printed 'list' hash

def print_list(list)
  
  list.each { |item, qty| puts "Buy #{qty} #{item}" }

end

What did you learn about pseudocode from working on this challenge?
What are the tradeoffs of using arrays and hashes for this challenge?
What does a method return?
What kind of things can you pass into methods as arguments?
How can you pass information between methods?
What concepts were solidified in this challenge, and what concepts are still confusing?