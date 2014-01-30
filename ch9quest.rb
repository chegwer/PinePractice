def ask question
	while true
	puts question
	reply = gets.chomp.downcase
	if (reply == 'yes' || reply == 'no')
		if reply == 'yes'
			return true
		end
		break
	else
		puts "Please answer yes or no."
	end
end
end


puts "Hi this is a test:"
puts

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating chiminichangas?'
ask 'Do you like eating sopapillas?'
puts 'Just a few more questions...'
ask 'Do you like drinking horchata'
ask 'Do you like eating flautas'

puts 'DEbriefing:'
puts 'Thanks for the participation.'
puts
puts wets_bed
