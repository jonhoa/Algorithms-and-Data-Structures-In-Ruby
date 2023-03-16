# Complete the 'miniMaxSum' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter and outputs the minimum sum and maximum sum of the INTEGER_ARRAY
#

def miniMaxSum(arr)
  # Write your code here
  i = 0
  j = 0
  num = arr.length
  num = num.to_i
  sum_array = []
  min = []
  max = []
  
    while i < num
      sum = 0    
      new_arr = [ ]
      new_arr = arr.clone
      new_arr.delete_at(i)
      # p new_arr
        new_arr.each do |value|
            sum = sum + value
        end
      sum_array.push(sum)
      # puts sum_array
      i += 1
    end
  
mins = sum_array.min
maxs= sum_array.max
puts "#{mins} #{maxs}"
end
puts "Enter numbers of an array"
arr = gets.rstrip.split.map(&:to_i)

miniMaxSum arr
