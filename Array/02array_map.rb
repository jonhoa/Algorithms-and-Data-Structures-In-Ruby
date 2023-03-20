# 2. Start with an array of strings and create a new array with each string upcased.
#  For example, ["hello", "goodbye"] becomes ["HELLO", "GOODBYE"].

strings = ["gogo", "cup", "maggot"]
new_strings = []
strings.each do |words|
  new_strings << words.upcase
end

p new_strings
