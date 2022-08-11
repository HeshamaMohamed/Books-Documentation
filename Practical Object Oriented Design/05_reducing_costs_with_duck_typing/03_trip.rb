require_relative '01_bicycle_customer_vehicle'
require_relative '03_preparers'
# Trip preparation becomes easier
class Trip
  attr_reader :bicycles, :customers, :vehicle

  def initialize(bicycles, customers, vehicle)
    @bicycles   = bicycles
    @customers  = customers
    @vehicle    = vehicle
  end

  def prepare(preparers)
    preparers.each { |preparer| preparer.prepare_trip(self) }
  end
end

trip = Trip.new(
  [Bicycle.new, Bicycle.new, Bicycle.new],
  [Customer.new, Customer.new],
  Vehicle.new
)
preparers = [TripCoordinator.new, Driver.new, Mechanic.new]

trip.prepare(preparers)
