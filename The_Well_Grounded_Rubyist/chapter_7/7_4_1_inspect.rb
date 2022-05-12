Object.new.inspect

class Person
  def initialize(name)
    @name = name
  end

  def inspect
    @name
  end
end

david = Person.new('David')
puts david.inspect
