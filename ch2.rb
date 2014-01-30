#hours in a year

hours_year = 24*365
puts "There are #{hours_year} in a regular year."
hours_year_leap = 24*366
puts "There are #{hours_year_leap} in a leap year."


#minutes in a year
minutes_year = hours_year*60
minutes_year_leap = hours_year_leap*60

#minutes in a decade

#three leap year decade
hours_3_decade =minutes_year * 7 + minutes_year_leap * 3 
puts "There are #{hours_3_decade} hours in a decade with three leap years."

hours_3_decade2 = minutes_year * 8 + minutes_year_leap *2
puts "There are #{hours_3_decade2} hours in a decade with two leap years."

#seconds in a year
seconds_year = minutes_year * 60
seconds_year_leap = minutes_year_leap * 60

#seconds in my life because I was born 1 Jan 1991 at 0:00
seconds_life = seconds_year * 17 + seconds_year_leap * 6
puts "There are #{seconds_life} seconds in my life."

#stupid way to write seconds
old_guy = 1025000000/(60*60*24*365)
puts "This guy is #{old_guy} years of age."
#idgaf how many leap years he actually had. DEAL WITH IT