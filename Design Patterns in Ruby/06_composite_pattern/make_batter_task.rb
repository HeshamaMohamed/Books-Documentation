class MakeBatterTask < CompositeTask
  def initialize
    super('Make batter')
    @sub_tasks = []
    self << AddDryIngredientsTask.new
    self << AddLiquidsTask.new
    self << MixTask.new
  end
end
