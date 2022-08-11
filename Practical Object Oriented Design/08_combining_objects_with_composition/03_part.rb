class Part
  attr_reader :name, :description, :needs_spare

  def initialize(name:, description:, needs_spare: true)
    @name         = name
    @description  = description
    @needs_spare  = needs_spare
  end
end
