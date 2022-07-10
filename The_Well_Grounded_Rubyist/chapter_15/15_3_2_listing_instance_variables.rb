class Person
  attr_accessor :name, :age

  def initialize(name)
    @name = name
  end
end

joe = Person.new('Joe')
p joe.instance_variables
# [:@name]
joe.age = 37
p joe.instance_variables
# [:@name, :@age]


# ==============================================

Person.new('David')
david = _
# _ gives you the value of the last evaluated expression, in our case, the person Object with name 'david'
