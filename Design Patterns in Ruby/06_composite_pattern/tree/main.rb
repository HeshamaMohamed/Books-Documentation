require_relative 'node'
require_relative 'task'

make_cake = Task.new('Make cake')

make_batter = Task.new('Make Batter')
make_batter << Task.new('Add Dry Ingredients', 1)
make_batter << Task.new('Add Wet Ingredients', 1.5)
make_batter << Task.new('Mix', 3)

make_cake << make_batter
make_cake << Task.new('Fill pan', 2.5)
make_cake << Task.new('Bake', 42)
make_cake << Task.new('Frost', 3)

puts make_cake.time_required
puts make_batter.time_required
