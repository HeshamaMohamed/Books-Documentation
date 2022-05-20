class C
  def talk
    puts 'Hi!'
  end
end
c = C.new
c.talk

obj = Object.new
def obj.talk
  puts 'Hi!'
end
obj.talk

class Car
  def self.makes
    %w[Hone Ford Toyoa Chevrolet Volvo]
  end
end

# Numeric subclasses as Integer, Float, and symbols can't have methods added to it.
# def 10.some_method; end # this gives a syntax error
# class << 10; end # This gives a type error and a "Can't define singleton." message.

str = 'I am a string'
class << str # adds singleton methods to the str object
  def twice
    self + ' ' + self
  end
end
puts str.twice

def str.twice # this is the same as the above.
  self + ' ' + self
end

N = 1
obj = Object.new
class << obj
  N = 2
end

def obj.a_method
  puts N
end

def obj.another_method
  puts N
end

obj.a_method
# 1
obj.another_method
# 2

class Ticket
  class << self
    def most_expensive(*tickets)
      tickets.max_by(&:price)
    end
  end
end

class Person
  attr_accessor :name
end
david = Person.new
david.name = 'David'
joe = Person.new
joe.name = 'Joe'
ruby = Person.new
ruby.name = 'Ruby'

def david.name
  '[not available'
end

puts "We've got one person named #{joe.name}, "
puts "one named #{david.name},"
puts "and one named #{ruby.name}."
# We've got one person named Joe,
# and one named [not available],
# and one named Ruby

module Secretive
  def name
    '[not available]'
  end
end

class << ruby
  include Secretive
end

puts ruby.name
# '[not available]'

class C
  def talk
    puts 'Hi from original class!'
  end
end

module M
  def talk
    puts 'Hello from module!'
  end
end
c = C.new
c.talk
# 'Hi from original class!'

class << c
  include M
end
c.talk
# 'Hello from module!'

c = C.new
class << c
  include M
  p ancestors
end
# [#<Class:#<C:0x00007fffda4a0128>>, M, C, Object, Kernel, BasicObject]

class C
  include M
end

class << c
  p ancestors
end
# [#<Class:#<C:0x00007ffff3129030>>, M, C, M, Object, Kernel, BasicObject]

string = 'a string'
p string.singleton_class.ancestors
# [#<Class:#<String:0x00007fffd50e8a30>>, String, Comparable, Object, Kernel, BasicObject]

class C
end

def C.a_class_method
  puts 'Singleton method defined on C'
end
C.a_class_method
# 'Singleton method defined on C'

class D < C
end
D.a_class_method
