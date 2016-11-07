# Release 0: Implement a Simple Search
arr = [42, 89, 23, 1]

def search_array(array, integer)
  fibs = {}
  index = 0
  while index < array.length 
  array.each do |x|
    if x == array.first 
      fibs[x] = index 
    else 
      fibs[x] = index
    end
  index += 1 
  end
  end
  fibs[integer]
end 
search_array(arr, 23)

# Release 1: Calculate Fibonacci Numbers
 
#Write the Fibonacci sequence which is the sum of prior 2 integers and the last integer ex. 1+2 = 3 then 2+3 = 5.

fibs = []
def fib_seq(n)
  fibs = [0,1]  
  until n == fibs.length 
  i = fibs[-1] + fibs[-2]
  fibs = fibs << i
  end 
  p fibs
end
  
p fib_seq(6)
puts " "
p fib_seq(100)
 
# Release 2: Sort an Array 
 
#the bubble sort algorithm sorts a collection by moving from left to right, comparing a value with the
#next value to determine which value is higher (or lower depending on the goal). Typically it iterates 
#through the entire list many times in order to properly sort a collection.