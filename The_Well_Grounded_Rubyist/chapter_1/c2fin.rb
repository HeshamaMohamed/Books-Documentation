puts 'ReadingCelsius temperature value from data file...'
num = File.read('temp.dat')
celsius = num.to_i
fahrenheit = (celsius * 9 / 5) + 32
puts "The Number is #{num}"
print 'Result: '
puts fahrenheit

# ruby -cw c2f.rb => checks the program for errors without running it.
# -cw  => 'c' stands for 'check for syntax errors' and w stands for flag
