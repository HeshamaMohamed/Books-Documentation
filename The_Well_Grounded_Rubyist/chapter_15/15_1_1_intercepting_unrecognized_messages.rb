class Cookbook
  attr_accessor :title, :author

  def initialize
    @recipes = []
  end

  def method_missing(m, *args, &block)
    @recipes.public_send(m, *args, &block)
  end
end

class Recipe
  attr_accessor :main_ingredient

  def initialize(main_ingredient)
    @main_ingredient = main_ingredient
  end
end

cb = Cookbook.new
recipe_for_cake = Recipe.new('flour')
recipe_for_chicken = Recipe.new('chicken')
cb << recipe_for_cake
cb << recipe_for_chicken
chicken_dishes = cb.select { |recipe| recipe.main_ingredient == 'chicken' }
chicken_dishes.each { |dish| puts dish.main_ingredient }
# Cookbook class has no '<<' method, it delegates it to the recipes object via method_missing method.

class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def method_missing(m, *args, &block)
    if /set_(.*)/.match(m)
      self.public_send("#{$1}=", *args)
    else
      super
    end
  end

  def respond_to_missing?(m , *args, &block)
    /set_/.match(m) || super
  end
end

person = Person.new('Joe', 37)
person.set_age(38)
p person.age # 38
p person.respond_to?(:set_age) # false before defining respond_to_missing?, true after defining it.
