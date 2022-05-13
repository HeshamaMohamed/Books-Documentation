puts __ENCODING__
# UTF-8

# puts the below magic comment at the beginning of the file if you want to change its encoding.
# encoding: US-ASCII

str = 'Test string'
p str.encoding
# <Encoding:UTF-8>
str.encode!('US-ASCII') # specific string
p str.encoding
# <Encoding:US-ASCII>

str << ". Euro symbol: \u20AC" # the encoding switches to UTF-8 after adding a char in the range of 128-255.
p str.encoding # Adding a char in range 0-127 wouldn't have changed it though.
# # <Encoding:UTF-8>
