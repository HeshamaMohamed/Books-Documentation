require_relative '01_bicycle'
require_relative '03_part'

def size
  parts.size
end

class Parts < Array
  def spares
    select(&:needs_spare)
  end
end

chain = Part.new(name: 'chain', description: '10-speed')

road_tire = Part.new(name: 'tire_size', description: '23')

tape = Part.new(name: 'tape_color', description: 'red')

mountain_tire = Part.new(name: 'tire_size', description: '2.1')

rear_shock = Part.new(name: 'rear_shock', description: 'Fox')

front_shock = Part.new(name: 'front_shock', description: 'Manitou', needs_spare: false)

##########################
road_bike_parts = Parts.new([chain, road_tire, tape])
road_bike = Bicycle.new(size: 'L', parts: road_bike_parts)

mountain_bike_parts = Parts.new([chain, mountain_tire, front_shock, rear_shock])
mountain_bike = Bicycle.new(size: 'L', parts: mountain_bike_parts)

##########################
#  Parts inherits '+' from Array, so you can
#    add two Parts together.
combo_parts = (mountain_bike.parts + road_bike.parts)

puts mountain_bike.parts.class  # => Parts
puts road_bike.parts.class      # => Parts
puts combo_parts.class          # => Array

# '+' definitely combines the Parts
puts combo_parts.size
# => 7

# but the object that '+' returns
#   does not understand 'spares'
puts combo_parts.spares
# => undefined method `spares' for #<Array:0x007f97ef23f828>
