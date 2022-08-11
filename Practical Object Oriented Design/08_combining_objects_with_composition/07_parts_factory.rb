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

################
require 'ostruct'
module PartsFactory
  def self.build(config:, parts_class: Parts)
    parts_class.new(
      config.collect do |part_config|
        create_part(part_config)
      end
    )
  end

  def self.create_part(part_config)
    OpenStruct.new(
      name: part_config[0],
      description: part_config[1],
      needs_spare: part_config.fetch(2, true)
    )
  end
end

################
road_config =
  [%w[chain 11-speed],
   %w[tire_size 23],
   %w[tape_color red]]

mountain_config =
  [%w[chain 11-speed],
   ['tire_size', '2.1'],
   %w[front_shock Manitou],
   ['rear_shock', 'Fox', false]]

################
road_bike =
  Bicycle.new(
    size: 'L',
    parts: PartsFactory.build(config: road_config)
  )

puts road_bike.spares.class
# => Array

puts road_bike.spares
# => #<OpenStruct name="chain", description="11-speed", needs_spare=true>
# => #<OpenStruct name="tire_size", description="23", needs_spare=true>
# => #<OpenStruct name="tape_color", description="red", needs_spare=true>

mountain_bike =
  Bicycle.new(
    size: 'L',
    parts: PartsFactory.build(config: mountain_config)
  )

puts mountain_bike.spares.class
# => Array

puts mountain_bike.spares
# => #<OpenStruct name="chain", description="11-speed", needs_spare=true>
# => #<OpenStruct name="tire_size", description="2.1", needs_spare=true>
# => #<OpenStruct name="front_shock", description="Manitou", needs_spare=true>

################
recumbent_config =
  [%w[chain 9-speed],
   %w[tire_size 28],
   ['flag', 'tall and orange']]

recumbent_bike =
  Bicycle.new(
    size: 'L',
    parts: PartsFactory.build(config: recumbent_config)
  )

puts recumbent_bike.spares
# => #<OpenStruct name="chain", description="9-speed", needs_spare=true>
# => #<OpenStruct name="tire_size", description="28", needs_spare=true>
# => #<OpenStruct name="flag", description="tall and orange", needs_spare=true>
