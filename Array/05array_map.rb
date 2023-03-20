#  5. Start with an array of strings and create a new array with each string's length.
#     For example, ["hello", "goodbye"] becomes [5, 7].
array = ["Food", "Colors"]
new_array = []

array.each do |words|
  new_array << words.length
end

p new_array
