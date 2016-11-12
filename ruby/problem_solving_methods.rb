# Release 0: Implement a Simple Search

def search_array(array, integer)
  fibs = {}
  index = 0
  while index < array.length 
      array.each do |x|
        fibs[x] = index 
        index += 1 
      end
  end
  fibs[integer]
end 

arr = [42, 89, 23, 1]
search_array(arr, 23)

# Release 1: Calculate Fibonacci Numbers
 
#Write the Fibonacci sequence which is the sum of prior 2 integers and the last integer ex. 1+2 = 3 then 2+3 = 5.


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
 
# The bubble sort algorithm:
# - Sorts an array of numbers by moving from left to right.
# - Compare a value with the next value to determine
# which value is higher. 
# - If next one is higher then these two values must be swapped.
# - If both are in already sorted positions then 
# move to the next two values. 
# - Iterate through the entire list many times in order to properly sort a collection.
# - And when there's no swap required, an array is completely sorted.

def bubble_sort(arr)
  l = arr.length

  loop do
    swapped = false

    (l-1).times do |i|
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        swapped = true
      end
    end

    break if not swapped
  end

  arr
end

a=[1,3,9,15,39,2,3,4]

bubble_sort(a)
