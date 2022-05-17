e = Enumerator.new do |y|
  y << 1
  y << 2
  y << 3
end

e.to_a
# [1, 2, 3]
e.map { |x| x * 10 }
e.select { |x| x > 1 }
# [2, 3]
e.take(2)
# [1, 2]

e = Enumerator.new do |y|
  (1..3).each { |i| y << i }
end

# DON"T DO  THE FOLLOWING, IT"S WRONG
e = Enumerator.new do 
  yield 1 
  yield 2
  yield 3
end

e = Enumerator.new do |y|
  puts 'Starting up the block!'
  (1..3).each { |i| y << i }
  puts 'Exiting the block!'
end

p e.to_a
p e.select { |x| x > 2 }
# Starting up the block!
# Exiting the block!
# [1, 2, 3]
# Starting up the block!
# Exiting the block!
# [3]

a = [1, 2, 3, 4, 5]
e = Enumerator.new do |y|
  total = 0
  until a.empty?
    total += a.pop
    y << total
  end
end

e.take(2)
# [5, 9]
p a
# [1, 2, 3]
p e.to_a
# [3, 5, 6]
p a
# []

names = %w(David Black Yukihiro Matsumoto)
e = names.enum_for(:select)

e.each { |n| n.include?('a') }
# ['David', 'Blac', 'Matsumoto']
e = names.enum_for(:inject, 'Names: ')
# #<Enumerator: ['David', 'Black', 'Yukihiro', 'Matsumoto']:inject('Names: ')>
e.each { |string, name| string << "#{name}..." }
# 'Names: David...Black...Yukihiro...Matsumoto...'

e.each { |string, name| string << "#{name}..." }
# Names: David...Black...Yukihiro...Matsumoto...

str = 'Hello'
str.each_byte { |byte| puts byte }
# 72
# 101
# 108
# 108
# 111
str.each_byte
#  #<Enumerator: 'Hello':each_byte>
str.enum_for(:each_byte)
#  #<Enumerator: 'Hello':each_byte>




