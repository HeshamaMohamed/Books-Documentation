### Exercise 1
year_count = Hash.new(0)
File.open('12_2_8_hits.txt') do |file|
  file.each do |line|
    line = line.split('/')
    puts "'#{line[0]}', performed by #{line[1]}, reached #1 in #{line[2]}"
  end
end

### Exercise 2

year_hits = Hash.new(0)
File.open('12_2_8_hits.txt') do |file|
  file.each do |line|
    line = line.split('/')
    year_hits[line[2]] += 1
  end
  best_year = year_hits.max[0].chomp # gets the key of the max number of hits.
  puts "#{best_year} was the best year for hit music between 2010 and 2014 "
end
