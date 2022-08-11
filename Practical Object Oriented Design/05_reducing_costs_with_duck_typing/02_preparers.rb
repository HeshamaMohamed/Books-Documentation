# when you introduce TripCoordinator and Driver
class TripCoordinator
  def buy_food(customers)
    # ...
    puts "TripCoordinator buy_food for #{customers}"
  end
end

class Driver
  def gas_up(vehicle)
    # ...
    puts "Driver gas_up for #{vehicle}"
  end

  def fill_water_tank(vehicle)
    # ...
    puts "Driver fill_water_tank for #{vehicle}"
  end
end

class Mechanic
  def prepare_bicycles(bicycles)
    bicycles.each { |bicycle| prepare_bicycle(bicycle) }
  end

  def prepare_bicycle(bicycle)
    puts "Mechanic prepare_bicycle #{bicycle}"
  end
end
