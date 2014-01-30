puts 'Enter some words:'
collection = []
while true
	word = gets.chomp
	if word == ''
		break
	end

	collection.push word
end



puts 'Here are the sorted words:'
puts collection.sort