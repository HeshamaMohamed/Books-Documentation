p eval('2+2')
# 4
print 'Method name: '
m = gets.chomp
eval("def #{m}; puts 'Hi!'; end")
eval(m)

def use_a_binding(b)
  eval('puts str', b)
end
str = "I'm a string in top-level binding!"
use_a_binding(binding) # binding gives access to its scope, so 'puts str' in the method can access str in main scope.
# "I'm a string in top-level binding!"

# x = gets
# any user input here
# x.tainted?
# true

p self
a = []
a.instance_eval { p self }
# main
# []

class C
  def initialize
    @x = 1
  end
end
c = C.new
c.instance_eval { puts @x }
# 1

string = 'A sample string'
string.instance_exec('s') { |delim| self.split(delim) }
# ['A', 'ample', 'tring']

class Person
  def initialize(&block)
    instance_eval(&block)
  end

  def name(name = nil)
    @name ||= name
  end

  def age(age = nil)
    @age ||= age
  end
end

joe = Person.new do 
  name 'Joe'
  age 37
end

c = Class.new
c.class_eval do 
  def some_method
    puts 'Created in class_eval'
  end
end
c_instance = c.new
c_instance.some_method
# 'Created in class_eval'

var = 'initialized variable'
class C
  # puts var
end
# NameError (undefined local variable or method 'var' for C:Class)
C.class_eval { puts var }
# 'initialized variable'

C.class_eval { def talk; puts var; end } # the method block inside class_eval has its own scope, can't access eval outside of it.
# C.new.talk
# undefined local variable or method `var' for #<C:0x00007fffd661ee90 @x=1> (NameError)

C.class_eval { define_method('talk') { puts var } }
C.new.talk
# 'initialized variable'

class Name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def to_s
    instance_variables.each do |ivar|
      print "#{instance_variable_get(ivar)}"
    end
  end

  def method_missing(m, args, &block)
    if m.to_s.end_with?('_name=')
      self.class.send(:define_method, m) do |args|
        instance_variable_set("@#{m.to_s.chop}", args)
      end
      send(m, args)
    else
      raise "No method for #{m}!"
    end
  end
end

n = Name.new('Joe', 'Leo')
p n.instance_variables
# [@first_name, @last_name]
p n.to_s
# Joe Leo
n.middle_name = 'Phillip'
p n.instance_variables
# [@first_name, @last_name, @middle_name]
p n.to_s
# Joe Leo Phillip
n.initials = 'JPL'
# method_missing': No method for initials=! (RuntimeError)
