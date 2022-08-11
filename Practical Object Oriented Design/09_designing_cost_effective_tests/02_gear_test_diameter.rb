require_relative '01_wheel_diameter'
require_relative '02_gear_injects_wheel'

# Gear expects a 'Duck' that knows 'diameter'
puts Gear.new(
  chainring: 52,
  cog: 11,
  wheel: Wheel.new(26, 1.5)
).gear_inches
# => 137.0909090909091

##########################################################
require 'minitest'
require 'minitest/reporters'
require 'minitest/asciidoc_plugin'

Minitest::Reporters.use! Minitest::Reporters::Asciidoc.new

##### You could just get a wheel and inject it during your tests.
##### But if you do, your Gear test now depends on Wheel.
#####   DIDN'T WE JUST REMOVE THIS VERY SAME DEPENDENCY FROM GEAR?????
class GearTest < Minitest::Test
  def test_calculates_gear_inches
    gear = Gear.new(
      chainring: 52,
      cog: 11,
      wheel: Wheel.new(26, 1.5)
    )

    assert_in_delta(137.1,
                    gear.gear_inches,
                    0.01)
  end
end

Minitest.run
#  **[rubyclass]#GearTest#**
#  **[green]#PASS#** __(0.00s)__  test_calculates_gear_inches

#  Finished in 0.00017s
#  1 tests, 1 assertions, [green]#0 failures, 0 errors#, [yellow]#0 skips#
