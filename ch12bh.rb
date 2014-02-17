birth_dates = {}

File.readlines('birthdates.txt').each { |line|
  name, date, year = line.split(',')
  birth_dates[name] = Time.gm(year, *(date.split))
}


puts "Please enter a name: "
name = gets.chomp
bday = birth_dates[name]

if bday == nil
  puts "Incorrect action."

else
  now = Time.new
  age = now.year - bday.year

  if now.month > bday.month || (now.month == bday.month && now.day > bday.day)
    age += 1
  end

  if now.month == bday.month && now.day == bday.day
    puts "#{name} turns #{age} today."
  else
    date = bday.strftime "%b %d"
    puts "#{name} will be #{age} on #{date}."
  end
end






