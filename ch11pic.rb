Dir.chdir ''

pic_names = Dir[]

puts "Input file name:"
file_name = gets.chomp

if File.exists?(file_name) == true
	puts "Exists. Try again."
	file_name = gets.chomp
end

