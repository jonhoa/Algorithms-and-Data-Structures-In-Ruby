# https://www.hackerrank.com/challenges/sparse-arrays/problem?isFullScreen=true
# There is a collection of input strings and a collection of query strings. For each query string, determine how many times it occurs in the list of input strings. Return an array of the results.
def matchingStrings(stringList, queries)
    # Write your code here
    results = []
    
    queries.each do |word|
    count = 0    
    stringList.each do |string|
        if string == word
        count += 1
        end
    end
    results.push(count)
   
    end
return results
