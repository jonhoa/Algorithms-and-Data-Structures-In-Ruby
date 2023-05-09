# Sentence case a single string and return the output
string = "do you like to eat mangoes or perhaps pinapples mate?"
p string.split(' ').map{|word| word[0].upcase + word[1...]}.join(" ")
