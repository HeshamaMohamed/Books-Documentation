require_relative '01_bicycle_customer_vehicle'
require_relative '01_mechanic'

class Trip
  attr_reader :bicycles, :customers, :vehicle

  def initialize(bicycles, customers, vehicle)
    @bicycles   = bicycles
    @customers  = customers
    @vehicle = vehicle
  end

  # this 'mechanic' argument could be of any class
  def prepare(mechanic)
    mechanic.prepare_bicycles(bicycles)
  end
end

Trip.new(
  [Bicycle.new, Bicycle.new, Bicycle.new],
  [Customer.new, Customer.new],
  Vehicle.new
).prepare(Mechanic.new)
