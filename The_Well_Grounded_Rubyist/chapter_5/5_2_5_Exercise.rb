class Car
  @makes = []
  @cars = {}
  attr_reader :make

  def self.cars 
    @cars ||= {}
  end

  def self.makes
    @makes ||= []
  end

  def self.total_count
    @total_count ||= 0
  end

  def self.total_count=(n)
    @total_count = n
  end

  def self.add_make(make)
    unless self.makes.include?(make)
      self.makes.push(make)
      self.cars[make] = 0
    end
  end

  def initialize(make)
    if self.class.makes.include?(make)
      puts "Creating a new #{make}!"
      @make = make
      self.class.cars[make] += 1
      self.class.total_count += 1
    else
      raise "No such make: #{make}."
    end
  end

  def make_mates
    self.class.cars[self.make]
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

# we now need to add independent makes for Hybrid since we made makes in the Car class
# we could have shared the makes with the Car class but I decided not to do so.
Hybrid.add_make('Honda')
Hybrid.add_make('Ford')
h3 = Hybrid.new('Honda')
f2 = Hybrid.new('Ford')
puts "There are #{Hybrid.total_count} hybrids on the road!"
