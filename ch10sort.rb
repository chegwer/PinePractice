def sort some_array
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	if unsorted_array.length <= 0
		return sorted_array
	end


	short = unsorted_array.pop
	notsorted = []

	unsorted_array.each do |x|
		if x < short
			notsorted.push short
			short = x
		else
			notsorted.push x
		end
	end

	sorted_array.push short

	recursive_sort notsorted, sorted_array
end

puts(sort(['can', 'feel', 'beans', 'tomato', 'miley']))
