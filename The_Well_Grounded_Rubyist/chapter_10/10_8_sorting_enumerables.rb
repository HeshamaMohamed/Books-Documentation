[3, 2, 5, 4, 1].sort
# [1, 2, 3, 4, 5]

[pa1, pa2, pa3, pa4, pa5].sort # we need to define a <=> to make the paintings able to compare to each other.

class Painting
  attr_reader :price

  def initialize(price)
    @price = price
  end

  def to_s
    "My price is #{price}."
  end

  def <=>(other_painting)
    self.price <=> other_painting.price
  end
end

paintings = 5.times.map { Painting.new(rand(100..900)) }

puts '5 randomly generated Painting prices:'
puts paintings
puts 'Same paintings, sorted:'
puts paintings.sort
# '5 randomly generated Painting prices:'
# My price is 147
# My price is 798
# My price is 472
# My price is 471
# My price is 675

# Same paintings, sorted:'
# My price is 147
# My price is 471
# My price is 472
# My price is 675
# My price is 798

year_sort = paintings.sort do |a, b| # this block is used to sort based on.
  a.year <=> b.year
end

['2', 1, 5, '3', 4, '6'].sort { |a, b| a.to_i <=> b.to_i }

pa1 = Painting.new(100)
pa2 = Painting.new(200)
pa1 > pa2
# NoMethodError (undefined method '>' for #<Painting:...)

class Painting
  include Comparable
end

pa1 > pa2
# false
pa1 < pa2
# true
pa3 = Painting.new(300)
pa2.between?(pa1, pa3)
# true

cheapest, priciest = [pa1, pa2, pa3].minmax
Painting.new(1000).clamp(cheapest, priciest).object_id == priciest.object_id
# true
