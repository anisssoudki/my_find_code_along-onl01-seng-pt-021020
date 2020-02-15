require 'pry'
collection = (1..100).to_a

def my_find(collection)
  newcollection = []
 i = 0
  while i < collection.length
 
   return newcollection << yield(collection[i])
    binding.pry
    i = i + 1
  end
  
  return newcollection
   
end


my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }