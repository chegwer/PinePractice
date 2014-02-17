def music_shuffle filenames

filenames = filenames.sort
len = filenames.length

2.times {
  l_idx = 0
  r_ids = len/2
  shuf = []

  while shuf.length < len
    if shf.length % 2 == 0
        shuf.push(filenames[r_idx])
        r_idx = r_idx + 1
      else
        shuf.push(filenames[l_idx])
        l_idx = l_idx + 1
      end
    end

    filenames = shuf
}

arr = []
cut = rand(len)
idx = 0

while idx < len
  arr.push(filenames[(idx+cut%len)])
  idx = idx + 1
end

arr
end

songs = ['aa/bbb', 'aa/ccc', 'aa/ddd', 'AAA/xxxx', 'AAA/yyyy', 'AAA/zzzz', 'foo/bar']

puts(music_shuffle(songs))