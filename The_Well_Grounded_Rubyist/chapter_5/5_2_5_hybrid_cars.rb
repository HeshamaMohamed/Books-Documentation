class Car
  @@makes = []
  @@cars = {}
  attr_reader :make
  def self.total_count
    @total_count ||= 0
  end

  def self.total_count=(n)
    @total_count = n
  end

  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes << make
      @@cars[make] = 0
    end
  end

  def initialize(make)
    if@@makes.include?(make)
      puts "Creating a new #{make}!"
      @make = make
      @@cars[make] += 1
      self.class.total_count += 1
    else
      raise "No such make: #{make}."
    end
  end

  def make_mates
    @@cars[self.make]
  end
end

Car.add_make('Honda')
Car.add_make('Ford')
h = Car.new('Honda')
f = Car.new('Ford')
h2 = Car.new('Honda')

puts 'Counting cars of same make as h2...'
puts "There are #{h2.make_mates}."
puts 'Counting total cars...'
puts "There are #{Car.total_count}."

class Hybrid < Car
end

h3 = Hybrid.new('Honda')
f2 = Hybrid.new('Ford')
puts "There are #{Hybrid.total_count} hybrids on the road!"
