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
    
# counts = Hash.new(0) #Empty hash
# birds = {}
# arr.each do |num|
#    counts[num]+= 1
# end

# counts.each { |k, v| 
# if v == counts.values.max
# birds[k] = v
# end
# }
# p birds.uniq

arry = [1,2,2,2,3,3,3,4,5]
hash_array = Hash.new(0)
max = hash_array.max
# counts recurrence into new hash
arry.each do |num|
hash_array[num] += 1 
end
p hash_array

if hash_array.uniq == true
    p "unique"
else   
    p hash_array.index(max)
    p hash_array[2]
    p "not unique"
end

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

