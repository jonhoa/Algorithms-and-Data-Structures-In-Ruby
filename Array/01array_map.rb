#  1. Start with an array of numbers and create a new array with each number times 3.
#     For example, [1, 2, 3] becomes [3, 6, 9]
arry = [1,2,3]
new_arry = []

arry.each do |num|
  new_arry << num*3
end
p new_arry
