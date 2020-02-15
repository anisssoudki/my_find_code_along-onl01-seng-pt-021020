require 'pry'
collection = (1..100).to_a

def my_find(collection)
 i = 0
  while i < collection.length
  yield(collection[i])
    return collection[i]
    i = i + 1
  end
  if collection[i].include?(true)
    true
  else 
    false
  end
  
  
  
end


my_find(collection) {|i| i % 3 == 0 and i % 5 == 0 }