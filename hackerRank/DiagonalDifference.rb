#
# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
diag_arr = 0
vert_arr = 0
i = 0

# diag array
while i < arr.length
  puts arr[i][i]
  diag_arr += arr[i][i]
  i += 1
end
puts
puts diag_arr
puts

# ver Array
j = 0
k = arr[j].length - 1
index = 0

while index < arr.length
  next unless (k - j) >= 0

  puts arr[j][k - j]
  vert_arr += arr[j][k - j]
  # puts "#{j}"
  # puts(k-j)
  j += 1
  index += 1
end

diff = diag_arr - vert_arr

   return diff.abs

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

arr = Array.new(n)

n.times do |i|
    arr[i] = gets.rstrip.split.map(&:to_i)
end

result = diagonalDifference arr

fptr.write result
fptr.write "\n"

fptr.close()
