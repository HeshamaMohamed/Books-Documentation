require_relative '01_bicycle'
require_relative '03_part'

require 'forwardable'
class Parts
  extend Forwardable
  def_delegators :@parts, :size, :each
  include Enumerable

  def initialize(parts)
    @parts = parts
  end

  def spares
    select(&:needs_spare)
  end
end

##########################
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

puts mountain_bike.spares.size   # => 3
puts mountain_bike.parts.size    # => 4

puts mountain_bike.parts + road_bike.parts
# => undefined method `+' for #<Parts:0x007fc1d59fe040>
