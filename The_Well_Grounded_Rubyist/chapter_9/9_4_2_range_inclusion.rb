r = 1..10
# 1..10
r.begin
# 1
r.end
# 10
r.exclude_end?
# false

r = 'a'..'z'
# 'a'..'z'
r.cover?('a')
# true
r.cover?('abc')
# true
r.cover?('A')
# false
r.cover?([])
# false

r.include?('a')
# true
r.include?('abc') # include? checks if the value is in the 26 letters, starting from 'a', ending at 'z'
# false
r = 1.0..2.0
# 1.0..2.0
r.include?(1.5)
# true

r = 100...1
# 100...1
r.include?(50)
# false

str = 'This is a sample string'[10..-5]
p str
# 'sample st'
p ['a', 'b', 'c', 'd'][0..-2]
# ['a', 'b']

