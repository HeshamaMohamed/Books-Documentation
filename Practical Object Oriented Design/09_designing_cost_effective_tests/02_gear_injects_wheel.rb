class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring:, cog:, wheel:)
    @chainring = chainring
    @cog       = cog
    @wheel     = wheel
  end

  def gear_inches
    # The object in the 'wheel' variable
    #   plays the 'Diameterizable' role.
    ratio * wheel.diameter
  end

  # ...
  def ratio
    chainring / cog.to_f
  end
end
