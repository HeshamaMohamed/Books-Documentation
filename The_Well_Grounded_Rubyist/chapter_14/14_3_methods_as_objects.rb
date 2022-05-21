class C
  def talk
    puts "Method-grabbing test! self is #{self}."
  end
end
c = C.new
meth = c.method(:talk)
p meth.owner
# C
meth.call
# Method-grabbing test! self is #<C:0x00007fffdda063f8>.

class D < C
end
d = D.new
unbound = meth.unbind
unbound.bind(d).call # you can unbound and bind methods to objects as long as it is of the same type of the instance method class.
# Method-grabbing test! self is #<D:0x00007fffc577bee8>.

unbound = C.instance_method(:talk)

class A
  def a_method
    puts 'Definition in class A'
  end
end

class B < A
  def a_method
    puts 'Definition in class B (subclass of A)'
  end
end

class C < B
end
c = C.new
c.a_method
# 'Definition in class B (subclass of A)'
A.instance_method(:a_method).bind(c).call
# Definition in class A

class C
  def call_original
    A.instance_method(:a_method).bind(self).call
  end
end
c.call_original
# Definition in class A

mult = lambda { |x, y| x * y }
twelve = mult[3, 4]
twelve = mult.(3, 4)
