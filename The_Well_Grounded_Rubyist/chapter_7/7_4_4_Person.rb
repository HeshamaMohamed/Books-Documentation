class Person
  attr_accessor :name, :age, :email

  def to_str
    name
  end

  def to_ary
    [name, age, email]
  end
end

david = Person.new
david.name = 'David'
david.age = 55
david.email = 'david@wherever'

puts 'david is named ' + david + '.'

array = []
array.concat(david)
p array
