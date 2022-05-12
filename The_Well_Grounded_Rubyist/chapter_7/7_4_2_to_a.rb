Computer = Struct.new(:os, :manufacturer)
laptop1 = Computer.new('linux', 'Lenovo')
laptop2 = Computer.new('os x', 'Apple')
[laptop1, laptop2].map { |laptop| laptop.to_a}

array = [1, 2, 3, 4, 5]
p [array]
p array
p *array
p [*array]


def combine_names(first_name, last_name)
  "#{first_name} #{last_name}"
end

names = ['David', 'Black']
puts combine_names(names[0], names[1])
# the above is equivalent to this.
puts combine_names(*names)
