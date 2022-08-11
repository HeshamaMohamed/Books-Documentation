class Gear
  private

  attr_reader :chainring, :cog

  public

  def initialize(chainring, cog)
    @chainring = chainring
    @cog       = cog
  end

  def ratio
    chainring / cog.to_f
  end
end

class Blinkered
  def cog(gear)
    gear.cog
  end
end

puts Blinkered.new.cog(Gear.new(54, 11))
# => private method `cog' called for #<Gear:0x00007fa4ef926120 @chainring=54, @cog=11>
