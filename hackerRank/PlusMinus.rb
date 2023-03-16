# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#Print the ratios of positive, negative and zero values in the array. Each value should be printed on a separate line with  digits after the decimal. 
# The function should not return a value.
# Output / Print the following  lines, each to  decimals:
# proportion of positive values
# proportion of negative values
# proportion of zeros

def plusMinus(arr)
    zero = 0
    pos = 0
    neg = 0
    
    arr.each do |num|
        if num == 0
            zero += 1
        elsif num > 0
            pos +=1
            elsif num < 0
                neg += 1
            end
    end
    zero = zero.to_f
    puts p = pos / arr.length.to_f
    puts n = neg.to_f / arr.length.to_f
    puts z = zero / arr.length

end
puts "Enter array size"
n = gets.strip.to_i
puts "Enter array elements"
arr = gets.rstrip.split.map(&:to_i)

plusMinus arr
