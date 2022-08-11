require_relative '01_wheel_diameter'

# Add a test to ensure the Wheel plays the Diameterizable role
# Gear expects a 'Duck' that knows 'diameter'

##########################################################
require 'minitest'
require 'minitest/reporters'
require 'minitest/asciidoc_plugin'

Minitest::Reporters.use! Minitest::Reporters::Asciidoc.new
# ...

# Ensure the Wheel is a Diameterizable
class WheelTest < Minitest::Test
  def setup
    @wheel = Wheel.new(26, 1.5)
  end

  def test_implements_the_diameterizable_interface
    assert_respond_to(@wheel, :diameter)
  end

  def test_calculates_diameter
    wheel = Wheel.new(26, 1.5)

    assert_in_delta(29,
                    wheel.diameter,
                    0.01)
  end
end

Minitest.run
#  **[rubyclass]#WheelTest#**
#    **[green]#PASS#** __(0.00s)__  test_calculates_diameter
#    **[green]#PASS#** __(0.00s)__  test_implements_the_diameterizable_interface
#  Finished in 0.00018s
#  2 tests, 2 assertions, [green]#0 failures, 0 errors#, [yellow]#0 skips#
