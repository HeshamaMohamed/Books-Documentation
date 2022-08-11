require_relative '01_wheel_width'
require_relative '02_gear_injects_wheel'

require_relative '09_diameterizable_test_interface_module'

class DiameterDouble
  def width
    10
  end
end
##########################################################
require 'minitest'
require 'minitest/reporters'
require 'minitest/asciidoc_plugin'

Minitest::Reporters.use! Minitest::Reporters::Asciidoc.new

##########################################################
class WheelTest < Minitest::Test
  include DiameterizableInterfaceTest

  def setup
    @wheel = @object = Wheel.new(26, 1.5)
  end

  def test_calculates_diameter
    # ...
    wheel = Wheel.new(26, 1.5)

    assert_in_delta(29,
                    wheel.width,
                    0.01)
  end
end

Minitest.run
Minitest::Runnable.reset
#  **[rubyclass]#WheelTest#**
#    **[green]#PASS#** __(0.00s)__  test_calculates_diameter
#    **[green]#PASS#** __(0.00s)__  test_implements_the_diameterizable_interface
#  Finished in 0.00016s
#  2 tests, 2 assertions, [green]#0 failures, 0 errors#, [yellow]#0 skips#

##########################################################
# Prove the test double honors the interface this
#   test expects.
class DiameterDoubleTest < MiniTest::Unit::TestCase
  include DiameterizableInterfaceTest

  def setup
    @object = DiameterDouble.new
  end
end

Minitest.run
Minitest::Runnable.reset
#  **[rubyclass]#DiameterDoubleTest#**
#    **[green]#PASS#** __(0.00s)__  test_implements_the_diameterizable_interface
#  Finished in 0.00013s
#  1 tests, 1 assertions, [green]#0 failures, 0 errors#, [yellow]#0 skips#

##########################################################
class GearTest < MiniTest::Unit::TestCase
  def test_calculates_gear_inches
    gear =  Gear.new(
      chainring: 52,
      cog: 11,
      wheel: DiameterDouble.new
    )

    assert_in_delta(47.27,
                    gear.gear_inches,
                    0.01)
  end
end

Minitest.run
Minitest::Runnable.reset
#  **[rubyclass]#GearTest#**
#    **[red]#ERROR#** __(0.00s)__  test_calculates_gear_inches
#  NoMethodError:         NoMethodError: undefined method `diameter' for +#+<DiameterDouble:0x007f9e6c9dc3c8>
#              9_60.rb:31:in `gear_inches'
#              9_60.rb:110:in `test_calculates_gear_inches'

#  Finished in 0.00061s
#  1 tests, 0 assertions, [red]#0 failures, 1 errors#, [yellow]#0 skips#
