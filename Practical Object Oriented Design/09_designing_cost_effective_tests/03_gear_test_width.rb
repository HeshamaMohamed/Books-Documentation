require_relative '01_wheel_width'
require_relative '02_gear_injects_wheel'

# Changing the implementor but not the sender (the API but not the caller)
# Gear expects a 'Duck' that knows 'diameter', but now that Duck (Wheel) knows only width.

begin
  Gear.new(
    chainring: 52,
    cog: 11,
    wheel: Wheel.new(26, 1.5)
  ).gear_inches
rescue StandardError
  'Gear.new died'
end

##########################################################
require 'minitest'
require 'minitest/reporters'
require 'minitest/asciidoc_plugin'

Minitest::Reporters.use! Minitest::Reporters::Asciidoc.new

##### The API of Wheel has changed but Gear didn't get updated
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
#    **[red]#ERROR#** __(0.00s)__  test_calculates_gear_inches
#  NoMethodError:         NoMethodError: undefined method `diameter' for +#+<Wheel:0x00007ff74010f448 @rim=26, @tire=1.5>

#  Finished in 0.00064s
#  1 tests, 0 assertions, [red]#0 failures, 1 errors#, [yellow]#0 skips#
