#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'birthdayCakeCandles' function below.
# You are in charge of the cake for a child's birthday. You have decided the cake will have one candle for each year of their total age. 
# They will only be able to blow out the tallest of the candles. Count how many candles are tallest.
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY candles as parameter.
#

def birthdayCakeCandles(candles)
    # Write your code here
    max_candle = candles.max
    p max_candle
    n = candles.length
    n = n.to_i
    count = 0
    
candles.each do |num|
    if num == max_candle
        count += 1
    end
end
p count
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

candles_count = gets.strip.to_i

candles = gets.rstrip.split.map(&:to_i)

result = birthdayCakeCandles candles

fptr.write result
fptr.write "\n"

fptr.close()
