str = 'abcde'
str.each_byte { |byte| p byte }
# 97
# 98
# 99
# 100
# 101

str.each_char { |char| p char }
# 'a'
# 'b'
# 'c'
# 'd'
# 'e'

str = "100\u20ac"
# "100?"
str.each_codepoint { |cp| p cp } # outputs char code per char not per byte. (one char might be more than a byte).
# 49
# 48
# 48
# 8364

str.each_byte { |byte| p byte } # shows char code per byte.
# 49
# 48
# 48
# 226
# 130
# 172

str = "This string\nhas three\nlines"
str.each_line { |line| puts "Next line: #{line}" }
# Next line: This string
# Next line: has three
# Next line: lines

str = 'David!Alan!Black'
$/ = '!' # This is the delimiter for what Ruby considers the next line in a string.
str.each_line { |line| puts "Next line: #{line}" } # Now Ruby's concept of a 'line' will be based on the '!' char.
# Next line: David!
# Next line: Alan!
# Next line: Black

string = 'Hello'
p string.bytes
# [72, 101, 108, 108, 111]
p string.chars
# ["H", "e", "l", "l", "o"]
p string.codepoints
# [72, 101, 108, 108, 111]
p string.lines
# ["Hello"]
