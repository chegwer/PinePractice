puts "Please list your numerical birthdate:"
puts "Year:"
year = gets.chomp
puts "Month:"
month = gets.chomp
puts "Day"
day = gets.chomp

bday = Time.new(year, month, day)
now = Time.new

diff = now - bday

years = diff / 31557600

counter = years

puts "#{counter} spankings for you!"
while counter > 0
	puts "SPANK!"
	counter -= 1
end

