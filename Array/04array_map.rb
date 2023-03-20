#  4. Start with an array of numbers and create a new array with each number plus 7.
#     For example, [1, 2, 3] becomes [8, 9, 10].
numbers = [2,4,7]
new_numbers = []

numbers.each do |num|
  new_numbers << num + 7
end

p new_numbers
