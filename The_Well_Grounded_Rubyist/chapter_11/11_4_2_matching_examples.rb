string = 'My phone number is (123) 555-1234.'
phone_re = %r{\((\d{3})\)\s+(\d{3})-(\d{4})}
m = phone_re.match(string)
unless m
  puts 'There was no match-sorry.'
  exit
end
print 'The whole string we started with: '
puts m.string # return the entire string matched with pattern.
# The whole string we started with: My phone number is (123) 555-1234.
print 'The entire part of the string that matched: '
puts m[0]
# The entire part of the string that matched: (123) 555-1234
puts 'The three captures: '
3.times do |index|
  puts "Capture ##{index + 1 }: #{m.captures[index]}"
end
# Capture #1: 123
# Capture #2: 555
# Capture #3: 1234
puts "Here's another way to get at the first capture:"
print 'Capture #1: '
puts m[1]
# Capture #1: 123

print 'The part of the string before the part that matched was: '
puts m.pre_match
# The part of the string before the part that matched was: My phone number is
print 'The part of the string after the part that matched was: '
puts m.post_match
# The part of the string after the part that matched was: .
print 'The second capture began at character '
puts m.begin(2)
# The second capture began at character 25
print 'The third capture ended at character '
puts m.end(3)
# The third capture ended at character 33
