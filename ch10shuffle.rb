def shuffle arr
	mix = []

	while arr.length > 0
		rando = rand(arr.length)

		start = 0

		newmix = []

		arr.each do |x|
			if start == rando
				arr.push x
			else
				newmix.push x
			end

			start += 1
		end

		arr = newmix
	end

	mix

end

puts(shuffle([1,2,3,4,5,6,7,8,9]))