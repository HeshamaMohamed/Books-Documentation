require_relative '01_bicycle_customer_vehicle'
require_relative '02_preparers'
# Trip preparation becomes more complicated
class Trip
  attr_reader :bicycles, :customers, :vehicle

  def initialize(bicycles, customers, vehicle)
    @bicycles   = bicycles
    @customers  = customers
    @vehicle    = vehicle
  end

  def prepare(preparers)
    preparers.each do |preparer|
      case preparer
      when Mechanic
        preparer.prepare_bicycles(bicycles)
      when TripCoordinator
        preparer.buy_food(customers)
      when Driver
        preparer.gas_up(vehicle)
        preparer.fill_water_tank(vehicle)
      end
    end
  end
end

trip = Trip.new(
  [Bicycle.new, Bicycle.new, Bicycle.new],
  [Customer.new, Customer.new],
  Vehicle.new
)
preparers = [TripCoordinator.new, Driver.new, Mechanic.new]

trip.prepare(preparers)
