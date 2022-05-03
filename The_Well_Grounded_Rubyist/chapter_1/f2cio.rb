puts 'Reading Fahrenheit temperature value from data file...'
num = File.read('temp.dat')
fahrenheit = num.to_i
celsius = (fahrenheit - 32) * 5 / 9
puts 'Saving result to output file "temp.out"'
fh = File.new('temp.out', 'w')
fh.puts celsius
fh.close

# ruby -cw c2f.rb => checks the program for errors without running it.
# -cw  => 'c' stands for 'check for syntax errors' and w stands for flag