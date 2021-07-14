=begin
Resolução do exercício Grading Students do HackerRank
Link: https://www.hackerrank.com/challenges/grading/problem
=end

require 'json'
require 'stringio'

def findNextMultipleOfFive(actualGrade)
    gradeString = actualGrade.to_s
    length = gradeString.length
    lastDigit = gradeString[length - 1].to_i
    
    if lastDigit == 0 || lastDigit == 5
        return actualGrade
    end
    
    if lastDigit >= 1  && lastDigit <= 4
        return (gradeString[0] + "5").to_i
    end
    
    if lastDigit >= 6  && lastDigit <= 9
        return ((gradeString[0].to_i + 1).to_s + "0").to_i
    end
end

def gradingStudents(grades)
    gradesRounded = Array.new
    
    grades.each do |grade|    
        nextMultipleOfFive = findNextMultipleOfFive grade
        
        if grade >= 38 && nextMultipleOfFive - grade < 3
            gradesRounded.push(nextMultipleOfFive)
        else
            gradesRounded.push(grade)
        end
    end

    return gradesRounded
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

grades_count = gets.strip.to_i

grades = Array.new(grades_count)

grades_count.times do |i|
    grades_item = gets.strip.to_i
    grades[i] = grades_item
end

result = gradingStudents grades

fptr.write result.join "\n"
fptr.write "\n"

fptr.close()