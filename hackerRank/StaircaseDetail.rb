# https://www.hackerrank.com/challenges/staircase/problem
# Print a staircase of size  using # symbols and spaces.

# Note: The last line must have  spaces in it.


def staircase(n)
    # Write your code here

i = n
i = i.to_i
j = 0 
j = j.to_i

i.times do
j += 1
line = " " 
  
if n <= 1
    line.prepend("#"* j)
  else
    n -= 1
    line.prepend((" ")*n + ("#")*j)
end    
  puts line
end

end
puts "Enter number of steps"
n = gets.strip.to_i

staircase n
