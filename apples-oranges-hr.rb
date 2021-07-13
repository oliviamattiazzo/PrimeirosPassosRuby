=begin
Resolução do exercício Apple and Orange do HackerRank
Link: https://www.hackerrank.com/challenges/apple-and-orange/problem
=end

require 'json'
require 'stringio'

def getDistanceAppleAndHouse(apple, startHouse)
    return startHouse - apple
end

def getDistanceOrangeAndHouse(orange, endHouse)
    return (orange - endHouse) * -1
end

def countApplesAndOranges(s, t, a, b, apples, oranges)
    distanceBetweenAppleAndHouse = getDistanceAppleAndHouse a, s
    distanceBetweenOrangeAndHouse = getDistanceOrangeAndHouse b, t
    
    totalApplesInHouse = 0
    totalOrangesInHouse = 0
    
    apples.each { |appleDistance|
        if appleDistance >= distanceBetweenAppleAndHouse
            totalApplesInHouse += 1
        end
    }
    
    oranges.each { |orangeDistance|
        if orangeDistance <= distanceBetweenOrangeAndHouse
            totalOrangesInHouse += 1
        end
    }
    
    puts totalApplesInHouse
    puts totalOrangesInHouse
end

first_multiple_input = gets.rstrip.split

s = first_multiple_input[0].to_i

t = first_multiple_input[1].to_i

second_multiple_input = gets.rstrip.split

a = second_multiple_input[0].to_i

b = second_multiple_input[1].to_i

third_multiple_input = gets.rstrip.split

m = third_multiple_input[0].to_i

n = third_multiple_input[1].to_i

apples = gets.rstrip.split.map(&:to_i)

oranges = gets.rstrip.split.map(&:to_i)

countApplesAndOranges s, t, a, b, apples, oranges
