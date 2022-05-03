print 'Hello. Please enter a new Celsius value: '
celsius = gets
fahrenheit = (celsius.to_i * 9 / 5) + 32
print 'The Fahrenheit equivalent is  '
print fahrenheit
puts '.'

# ruby -cw c2f.rb => checks the program for errors without running it.
# -cw  => 'c' stands for 'check for syntax errors' and w stands for flag