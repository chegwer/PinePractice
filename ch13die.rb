class Die

  def initialize
    roll
  end

  def roll
    @number_showing = 1 + rand(6)
  end

  def showing 
    @number_showing
  end

  def cheat
    puts "Enter a number between 1 and 6 to cheat:"
    @number_showing = gets.chomp.to_i
    while @number_showing > 6 || @number_showing < 1
      puts "Error. Try again."
      @number_showing = gets.chomp.to_i
    end
  end
end


puts Die.new.showing
puts Die.new.cheats