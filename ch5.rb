#full name greeting
puts "Howdy! What's your first name?"
first = gets.chomp
puts "Thanks! How about your middle name?"
middle = gets.chomp
puts "Alright, how about your last name?"
last = gets.chomp
puts "It's nice to meet you #{first} #{middle} #{last}!"

#your favourite number is bogus
puts "What's your favourite number?"
number = gets.chomp
puts "#{number}?"
better = number.to_i
better = better + 1
puts "Mine is #{better}."