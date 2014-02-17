file = shuffle(Dir['**/*.m4a'])

File.open 'hotjams.m3u', 'x' { |f|
  file.each { |m4a|
    f.write m4a+"\n"
    }
  }

puts "End."