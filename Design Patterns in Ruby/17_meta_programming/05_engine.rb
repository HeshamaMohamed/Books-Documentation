class Engine
  def start_engine; end

  def stop_engine; end
end

class Car
  extend Forwardable

  def_delegators :@engine, :start_engine, :stop_engine

  def initialize
    @engine = Engine.new
  end
end
