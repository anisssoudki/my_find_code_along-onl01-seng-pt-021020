require 'pry'
collection = (1..100).to_a
def my_find(collection)
 i = 0
  while i < collection.length
  yield(collection[i])
    i = i + 1
  end
end