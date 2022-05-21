pr = Proc.new { puts "Inside a Proc's block" }
pr = proc { puts "Inside a Proc's block" } # equivalent to the above.
pr.call
# 'Inside a Proc's block'

[1, 2, 3].each { |x| puts x * 10 }

def call_a_proc(&block)
  block.call
end
call_a_proc { puts "I'm the block...or Proc...or something."}
# "I'm the block...or Proc...or something."

p = Proc.new { |x| puts x.upcase}
%w[David Black].each(&p)
# DAVID
# BLACK

# puts c2f(100)

def capture_block(&block)
  puts 'Got block as proc'
  block.call
end
capture_block { puts 'Inside the block' }

p = Proc.new { puts 'This proc argument will serve as a code block.' }
capture_block(&p)
# 'This proc argument will serve as a code block.'

# capture_block(&p) { puts 'This is the explicit block' }
# error

albums = { 1988 => 'Straight Outta Compton', 1993 => 'Midnight Marauders', 1996 => 'The Score', 2004 => 'Madvillainy', 2015 => 'To Pimp a Butterfly' }
p albums[2015]
# 'To Pimp a butterfly'

[1988, 1996].map(&albums)
# ['Straight Outta Compton', 'The Score']
(1990..1999).map(&albums)
# ['Midnight Marauders', 'The Score']

class Person
  attr_accessor :name
  def self.to_proc
    Proc.new { |person| person.name }
  end
end
d = Person.new
d.name = 'David'
j = Person.new
j.name = 'Joe'
puts [d,j].map(&Person)

%w[david black].map(&:capitalize)
# ['David', 'Black']
%w[david black].map { |str| str.capitalize }
# ['David', 'Black']
%w[david black].map { |str| str.public_send(&:capitalize) }
# ['David', 'Black']

class Symbol
  def to_proc
    Proc.new { |obj| obj.public_send(self) }
  end
end

def talk
  a = 'Hello'
  puts a
end
a = 'Goodbye'
talk
# 'Hello'
puts a
# 'Goodbye'

m = 10
[1, 2, 3].each { |x| puts x * m }
# 10
# 20
# 30

def multiply_by(m)
  Proc.new { |x| puts x * m }
end
mult = multiply_by(10)
mult.call(12)
# 120

def call_some_proc
  a = "irrelevant 'a' in method scope"
  puts a
  pr.call
end
a = "'a' to be used in Proc block"
pr = Proc.new { puts a }
pr.call
call_some_proc(pr)

def make_counter
  n = 0
  return Proc.new { n += 1 }
end
c = make_counter
puts c.call
# 1
puts c.call
# 2
d = make_counter
puts d.call
# 1
puts c.call
# 3

pr = Proc.new { |x| puts "Called with argument #{x}" }
pr.call(100)
# 'Called with argument 100'

pr = Proc.new { |x| p x }
pr.call # if called w/o parameters, its single parameter is set to nil.
# nil
pr.call(1, 2, 3) # discards the rest of the parameters.
# 1
