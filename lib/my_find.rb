require 'pry'
collection = (1..100).to_a

def my_find(collection)
 i = 0
  while i < collection.length
   return collection[i] if yield(collection[i])
   binding.pry
    i = i + 1
  end
end

#this code returns collection[i] if the i is divisible by 3 and 5 


my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }