class OrangeTree

	def initialize
		@age = 0
		@oranges = 0
		@alive = true
	end

	def height
		if @alive
			@height
		else
			"Dead and destroyed."
		end
	end

	def count_the_oranges
		if @alive
			@orange_count
		else
			"Death results in dearth."
		end
	end

	def one_year_passes
		if @alive
			@height = @height + 4
			@orange_count = 0

			if @height > 10 && rand(2) > 0
				@alive = false
				"The tree is dead from old age."
			elsif @height > 2
				@orange_count = (@height * 17 - 23).to_i
				"This year the tree trew #{@height} feet tall," +
				" and produced #{@orange_count} oranges."
			else
				"This year the tree grew #{@height}m tall," +
				" but it is too young to bear fruit."
			end
		else
			"The tree died and is still dead."
		end
	end


	def pick_an_orange
		if @alive
			if @orange_count > 0
				@orange_count -= 1
				"You pick an orange."
			else
				"There are no oranges to pick."
			end
		else
			"Dead trees bear no fruit."
		end
	end
end

ot = OrangeTree.new
5.times do
	ot.one_year_passes	
end
puts(ot.one_year_passes)
puts(ot.count_the_oranges)
puts(ot.height)
puts(ot.one_year_passes)
puts(ot.height)
puts(ot.count_the_oranges)
puts(ot.pick_an_orange)

