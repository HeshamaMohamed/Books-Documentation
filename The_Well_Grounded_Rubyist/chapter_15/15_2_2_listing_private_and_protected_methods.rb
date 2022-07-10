o = Object.new
p o.private_methods.size # 74
p o.protected_methods.size # 0

p o.private_methods -
  BasicObject.private_instance_methods(false) -
  Kernel.private_instance_methods(false)
# [:DelegateClass]

class Person
  attr_reader :name

  def name=(name)
    @name = name
    normalize_name
  end

  private

  def normalize_name
    name.gsub!(/[^-a-z'.\s]/i, '')
  end
end

david = Person.new
david.name = '123David!! Bl%a9ck'
raise 'Problem' unless david.name == 'David Black'

puts 'Name has been normalized.'
# 'Name has been normalized.'
p david.private_methods.sort.grep(/normal/)
# [:normalize_name]
