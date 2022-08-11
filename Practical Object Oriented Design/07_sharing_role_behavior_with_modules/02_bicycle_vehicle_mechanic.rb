require_relative '02_schedulable'

class Bicycle
  include Schedulable

  def lead_days
    1
  end
  # ...
end

require 'date'
starting = Date.parse('2019/09/04')
ending   = Date.parse('2019/09/10')

b = Bicycle.new
puts b.schedulable?(starting, ending)
# => This Bicycle is available 2019-09-03 - 2019-09-10
# => true

class Vehicle
  include Schedulable

  def lead_days
    3
  end
  # ...
end

class Mechanic
  include Schedulable

  def lead_days
    4
  end
  # ...
end

v = Vehicle.new
puts v.schedulable?(starting, ending)
# => This Vehicle is available 2019-09-01 - 2019-09-10
# => true

m = Mechanic.new
puts m.schedulable?(starting, ending)
# => This Mechanic is available 2019-08-31 - 2019-09-10
# => true
