class Bicycle
  attr_reader :size

  def initialize(**opts)
    @size       = opts[:size]
    @chain      = opts[:chain]
    @tire_size  = opts[:tire_size]
  end
end
