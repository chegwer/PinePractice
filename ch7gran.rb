puts "HELLO THERE!"
talk = gets.chomp
int = 19
count = 0
while count < 4 && talk != 'BYE'
	puts "HUH?! SPEAK UP, SONNY!"
	talk = gets.chomp
		if talk == talk.upcase
			puts "NO, NOT SINCE " + int.to_s+(rand(85)).to_s+ "!"
		elsif talk == 'BYE'
			count += 1
			puts "HUH?"
		end
	end
puts "OH, OK BYE!"