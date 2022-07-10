module M
  def self.included?(c)
    puts "I have just been mixed into #{c}"
  end
end

class C
  include M
end

# =====================================

module M
  def self.included(cl)
    def cl.a_class_method
      puts 'Now the class has a new class method.'
    end
  end

  def an_inst_method
    puts 'This module supplies this instance method.'
  end
end

class C
  incude M
end

C.a_class_method # 'Now the class has a new class method.'
c = C.new
c.an_inst_method # 'This module supplies this instance method.'
