puts "Enter a starting year:"
start = gets.chomp.to_i
puts "Enter an ending year:"
last = gets.chomp.to_i
year = start.to_i
while year <= last
	if year%4 == 0
		if year%100 != 0 || year%400 == 0
		puts "#{year.to_s}"
		end
	end
	year += 1
end
