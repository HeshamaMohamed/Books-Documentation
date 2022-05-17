animals = %w(Jaguar Turtle Lion Antelope)
puts animals.select { |n| n[0] < 'M' }.map(&:upcase).join(' ')
# 'JAGUAR', 'LION', 'ANTELOPE'
animals.each_slice(2).map do |predator, prey|
  "Predator: #{predator}, Prey: #{prey}\n"
end
# ['Predator: Jaguard, Prey:Turtle\n', 'Predator: Lion, Prey: Antelope\n']

string = 'An arbitrary string'
string.each_byte.map {|byte| byte + 1}

e = names.enum_for(:inject, 'Names: ')

('a'..'z').map.with_index { |letter, i| [letter, i] }
# [['a',0], ['b', 1], etc..]

module Music
  class Scale
    NOTES = %w('c c# d d# e f f# g a a# b')
    def play
      NOTES.to_enum
    end
  end
end

scale.play.map {|note| puts "Next note: #{note}" }
scale.play.with_index(1) { |note, i| puts "Note #{i}: #{note}" }
# Note1: c
# Note2: c#
# Note3: d
# etc..



class String
  def ^(key)
    kenum = key.each_byte.cycle
    each_byte.map { |byte| byte ^ kenum.next }.pack('C*')
  end
end

str = 'Nice little string.'
key = 'secret!'
x = str ^ key
# => '=\f\x00\x17E\x18H\a\x11\x0F\x17E\aU\x01\f\r\x15K'
orig = x ^ key
# 'Nice little string.'

# guard against dealing with UTF-8 string against ASCII string and returning ASCII-8BIT
each_byte.map { |byte| byte ^ kenum.next }.pack('C*').force_encoding(self.encoding)
