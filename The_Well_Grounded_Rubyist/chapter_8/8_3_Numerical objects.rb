n = 99.6
m = n.round
puts m
x = 12
if x.zero?
  puts 'x is zero'
else
  puts 'x is not zero'
end
puts "The ASCII character equivalent of 97 is #{97.chr}"

puts 0x12 # hexadecimal of Integer 18 (base 16)
# 18
puts 0x12 + 12
# 30
puts 012 # octal of Integer 10 (base 8)

012 + 12
# 22
012 + 0x12
# 18
'10'.to_i(17) # base 17 of 10
# 17
'12345'.to_i(13)
# 33519
'ruby'.to_i(35)
# 1194794
