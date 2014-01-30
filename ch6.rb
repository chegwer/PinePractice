#full name greeting
puts "Howdy! What's your first name?"
first = gets.chomp
fn = first.length.to_i
puts "That's #{fn} characters."
puts "Thanks! How about your middle name?"
middle = gets.chomp
mn = middle.length.to_i
puts "That's #{mn} characters."
puts "Alright, how about your last name?"
last = gets.chomp
ln = last.length.to_i
puts "That's #{ln} characters."
puts "It's nice to meet you #{first} #{middle} #{last}!"
total = fn + mn + ln
puts "You have a total of #{total} characters in your name."
