class Bicycle
  attr_reader :gears, :wheels, :seats
  def initialize(gears = 1)
    @wheels = 2
    @seats = 1
    @gears = gears
  end

  def rent
    puts 'Sorry but this model is sold out.'
  end
end

class Tandem < Bicycle
  def initialize(gears)
    super
    @seats = 2
  end

  def rent
    puts 'This bike is available!'
  end
end

t = Tandem.new(1)
t.method(:rent)
t.method(:rent).super_method
t.method(:rent).call
t.method(:rent).super_method.call
t.method(:rent).super_method.super_method