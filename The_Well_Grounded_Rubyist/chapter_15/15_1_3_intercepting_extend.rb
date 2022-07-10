module M
  def self.extended(obj)
    puts "Module #{self} is being used by #{obj}."
  end

  def an_inst_method
    puts 'This module supplies this instance method.'
  end
end

my_object = Object.new
my_object.extend(M) # 'Module M is being used by #<Object:0x000056023b8c1408>.'
my_object.an_inst_method # 'This module supplies this instance method.'

# =========================================

module M
  def self.included(c)
    puts "#{self} included by #{c}"
  end

  def self.extended(obj)
    puts "#{self} extended by #{obj}."
  end
end

obj = Object.new
puts "Including M in object's singleton class:" # "Including M in object's singleton class:"

class << obj
  include M # "M included by #<Class:#<Object:0x0000559e0cc11e48>>"
end

obj = Object.new
puts 'Extending object with M:' # '# Extending object with M:'
obj.extend(M) # M extended by #<Object:0x0000559e0cc11b00>.
