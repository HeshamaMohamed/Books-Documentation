str = 'Hi '
puts "#{str}there."
# => 'Hi there.'

"The sum is #{2 + 2}"

puts "My name is #{ class Person
                      attr_accessor :name
                    end
                    d = Person.new
                    d.name = 'David'
                    d.name
                  }."

class Person
  def to_s
    name
  end
end

david = Person.new
david.name = 'David'
puts "Hello, #{david}!"
