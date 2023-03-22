# Complete the catAndMouse function below.
def catAndMouse(x, y, z)

    catA = (x - z).abs 
    catB = (y - z).abs
        
    # p catA
    # p catB
    
    if catA < catB
        p "Cat A"
        elsif catB < catA
            p "Cat B"
        elsif catA == catB
            p "Mouse C"
        end
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

q = gets.to_i

q.times do |q_itr|
    xyz = gets.rstrip.split

    x = xyz[0].to_i

    y = xyz[1].to_i

    z = xyz[2].to_i

    result = catAndMouse x, y, z

    fptr.write result
    fptr.write "\n"
end

fptr.close()


# the least difference(cat x - mouse) means the cat will catch the mouse
# if least difference of both cats is equal the mouse gets away
