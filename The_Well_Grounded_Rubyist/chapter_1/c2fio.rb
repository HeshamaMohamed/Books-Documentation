puts 'Reading Celsius temperature value from data file...'
num = File.read('temp.dat')
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts 'Saving result to output file "temp.out"'
fh = File.new('temp.out', 'w')
fh.puts fahrenheit
fh.close

# ruby -cw c2f.rb => checks the program for errors without running it.
# -cw  => 'c' stands for 'check for syntax errors' and w stands for flag
