# diameter method doesn't belong in Gear, notice it
# depends on rim and tire only
class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog       = cog
    @rim       = rim
    @tire      = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * diameter
  end

  def diameter
    rim + (tire * 2)
  end
end

puts "2nd Gear gear_inches = #{Gear.new(54, 11, 622, 20).gear_inches}"
