=begin
Resolução do exercício Breaking the Records do HackerRank
Link: https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem
=end

require 'json'
require 'stringio'

def breakingRecords(scores)
    countWorstRecords = 0
    countBestRecords = 0
    worstRecord = scores[0]
    bestRecord = scores[0]
    
    scores.each { |score|
        if score > bestRecord
            bestRecord = score
            countBestRecords += 1
            puts "bestRecord: #{bestRecord} | countBestRecords: #{countBestRecords}"
        elsif score < worstRecord
            worstRecord = score
            countWorstRecords += 1
            puts "worstRecord: #{worstRecord} | countWorstRecords: #{countWorstRecords}"
        end
    }
    
    return [countBestRecords, countWorstRecords]
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.strip.to_i

scores = gets.rstrip.split.map(&:to_i)

result = breakingRecords scores

fptr.write result.join " "
fptr.write "\n"

fptr.close()
