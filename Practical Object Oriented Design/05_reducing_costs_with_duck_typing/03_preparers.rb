# when every preparer is a Duck
# that responds to 'prepare_trip'
class Mechanic
  def prepare_trip(trip)
    prepare_bicycles(trip.bicycles)
  end

  def prepare_bicycles(bicycles)
    bicycles.each { |bicycle| prepare_bicycle(bicycle) }
  end

  def prepare_bicycle(bicycle)
    puts "Mechanic prepare_bicycle #{bicycle}"
  end
end

class TripCoordinator
  def prepare_trip(trip)
    buy_food(trip.customers)
  end

  def buy_food(customers)
    puts "TripCoordinator buy_food for #{customers}"
  end
end

class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end

  def gas_up(vehicle)
    puts "Driver gas_up for #{vehicle}"
  end

  def fill_water_tank(vehicle)
    puts "Driver fill_water_tank for #{vehicle}"
  end
end
