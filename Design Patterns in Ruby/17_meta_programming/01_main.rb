require_relative '01_new_plant'

plant1 = new_plant(:fleshy, :broad)
plant2 = new_plant(:woody, :needle)

puts "Plant 1's stem: #{plant1.stem} leaf: #{plant1.leaf}" # => Plant 1's stem: fleshy leaf: broad
puts "Plant 2's stem: #{plant2.stem} leaf: #{plant2.leaf}" # => Plant 2's stem: woody leaf: needle
