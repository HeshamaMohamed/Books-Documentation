class BakeTask < Task
  def initialize
    super('Bake the cake.')
  end

  def time_required
    42
  end
end
