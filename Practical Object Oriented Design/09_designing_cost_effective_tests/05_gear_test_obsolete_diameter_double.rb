require_relative '01_wheel_width' # <---- used to be 'diameter'
require_relative '02_gear_injects_wheel'

# Updating the production API (Wheel used diamater, now uses width), and then injecting a Double that still uses the old API.

# Gear expects a 'Duck' that knows 'diameter'
begin
  Gear.new(
    chainring: 52,
    cog: 11,
    wheel: Wheel.new(26, 1.5)
  ).gear_inches
rescue StandardError
  'died'
end

##########################################################
require 'minitest'
require 'minitest/reporters'
require 'minitest/asciidoc_plugin'

Minitest::Reporters.use! Minitest::Reporters::Asciidoc.new

##### Remove the Gear test's dependency on the Wheel class by
##### injecting something that HONORS the diameterable role,
##### instead of BEING the Wheel class.
#####
# Create a player of the 'Diameterizable' role
class DiameterDouble
  def diameter    # <- Wrong implementation of
    10            # <- Diameterizable API
  end
end

class GearTest < Minitest::Test
  def test_calculates_gear_inches
    gear = Gear.new(
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
#  **[rubyclass]#GearTest#**
#    **[green]#PASS#** __(0.00s)__  test_calculates_gear_inches
#  Finished in 0.00015s
#  1 tests, 1 assertions, [green]#0 failures, 0 errors#, [yellow]#0 skips#
Minitest::Runnable.reset
