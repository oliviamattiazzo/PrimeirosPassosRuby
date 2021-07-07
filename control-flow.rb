print "String a ser 'donaldificada': "
user_input = gets.chomp
user_input.downcase!

if user_input.length == 0 
  puts "Você não digitou nada!"
  exit
end

if (user_input.include? "s") || (user_input.include? "c")
  user_input.gsub!(/s/, "th")
  user_input.gsub!(/c/, "s")

  puts "Se o Pato Donald fosse repetir a sua string, seria assim: #{user_input}"
else
  print "Não tem nenhum 's' na string digitada."
end