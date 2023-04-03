# #!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'migratoryBirds' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY arr as parameter.
#
def migratoryBirds(arr)
    # Write your code here
# Count the number of times a number is repeated in an array
counts = Hash.new(0) #Empty hash
min_birds = []
arr.each do |num|
   counts[num]+= 1
end
p counts

value_max = 0
counts.each do |key,value|
 if value.to_i > value_max
   value_max = value.to_i
 end
end
puts "Max value is #{value_max}"
# loop throught values and print less key
counts.each do|key,value|
if value == value_max
min_birds.push(key)
p key  
end
end
p counts.key(value_max)
p min_birds.min
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

arr_count = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

result = migratoryBirds arr

fptr.write result
fptr.write "\n"

fptr.close()
# ITERATE
# COUNT # EACH NUMBER OCCURS IN THE ARRAY
# IF IT OCCURS FREQUENTLY PRINT IT
# IF IT IS EQUAL TO ANOTHER OCCURNACE, THEN THE LOWEST NUMERICAL VALUE IS PRINTED BETWEEN THE TWO( EG 1, 2)

