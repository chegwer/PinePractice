puts 'This will turn your entry into an old-school Roman numeral.'




def old_Roman x
	roman = ''

	roman = roman + 'M' * (x/1000)
	roman = roman + 'D' * (x % 1000/500)
	roman = roman + 'C' * (x % 500/100)
	roman = roman + 'L' * (x % 50/10)
	roman = roman + 'X' * (x % 10/5)
	roman = roman + 'I' * (x % 5/1)
	roman
end

puts (old_Roman(1999))