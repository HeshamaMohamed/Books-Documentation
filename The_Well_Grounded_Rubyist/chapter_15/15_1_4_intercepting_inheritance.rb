class C
  def self.inherited(subclass)
    puts "#{self} just got subclassed by #{subclass}."
  end
end

class D < C
end
# "C just got subclassed by D"

class E < D
end
# "D just got subclassed by E"
# This behavior is because class D inherited the "inherited" method from class C.
# Class E will behave the same as it inherited the method too.

# =============================================

class C
  class << self
    def self.inherited
      puts 'Singleton class of C just got inherited'
      puts "But you'll never see this message."
    end
  end
end

class D < C
  class << self
    puts "D's singleton class now exists, but no callback!"
  end
end
