puts "Digite o texto a ser verificado: "
text = gets.chomp

puts "Digite qual palavra censuraremos: "
redact = gets.chomp

words = text.split(" ")

words.each { |word|
  if word.downcase == redact.downcase
    print "REDACTED "
  else
    print word + " "
  end
}