def english_number number
	if number < 0
		return 'Enter a  number that is not negative.'
	end
	if number == 0
		return 'zero'
	end


	num_string = ''

	ones_place = ['one', 'two', 'three',
				'four', 'five', 'six',
				'seven', 'eight', 'nine']

	tens_place = ['ten', 'twenty', 'thirty',
				'forty', 'fifty', 'sixty',
				'seventy', 'eighty', 'ninety']

	teenagers = ['eleven', 'twelve', 'thirteen',
				'fourteen', 'fifteen', 'sixteen',
				'seventeen', 'eighteen', 'nineteen']

	zillions = [['hundred', 2],
				['thousand', 3],
				['million', 6],
				['trillion',9],
				['quadrillion', 12],
				['quintillion', 15],
				['sextillion', 18],
				['septillion', 21],
				['octillion', 27],
				['nonillion', 30],
				['decillion', 33],
				['undecillion', 36],
				['duodecillion', 39],
				['tredecillion', 42],
				['quattuordecillion', 45],
				['quindecillion', 48],
				['sexdecillion', 51],
				['septendecillion', 54],
				['octodecillion', 57],
				['novemdecillion', 60],
				['vigintillion', 63],
				['googol', 100]]

	left = number

	while zillions.length > 0
		zil_pair = zillions.pop
		zil_name = zil_pair[0]
		zil_base = 10 ** zil_pair[1]

		write = left/zil_base
		left = left - write*zil_base

		if write > 0
			prefix = english_number write

			num_string = num_string + prefix + ' ' + zil_name

			if left > 0
				num_string = num_string + ' '
			end
		end
	end

	write = left/10
	left = left - write*10

	if write > 0
		if ((write == 1) and (left > 0))
			num_string = num_string + teenagers[left-1]
			left = 0
		else
			num_string = num_string + tens_place[write-1]
		end

		if left > 0
			num_string = num_string + '-'
		end
	end

	write = left
	left = 0

	if write > 0
		num_string = num_string + ones_place[write-1]
	end

	num_string
end

num_start = 135
num_now = num_start

while num_now > 2
	puts english_number(num_now).capitalize + ' bottles of beer on the wall,' +
		english_number(num_now) + ' bottles of beer!'

	num_now = num_now - 1
	puts 'Take one down, and pass it around' +
		english_number(num_now) + ' bottles of beer on the wall.'
end

puts 'Two bottles of beer on the wall, two bottles of beer,'
puts 'Take one down, and pass it around, one bottle of beer on the wall.'
puts 'One bottle of beer on the wall, one bottle of beer,'
puts 'Take one down, and pass it around, no bottles of beer on the wall.'
