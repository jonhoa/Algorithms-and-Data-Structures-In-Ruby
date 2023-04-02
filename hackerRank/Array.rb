# Count the number of times a number is repeated in an array
arr = [ 1, 2, 3, 5, 6, 7, 7, 7, 3, 3, 4, 1, 1, 1, 5, 3]
counts = Hash.new(0) #Empty hash

arr.each do |num|
   counts[num]+= 1
end
p counts
