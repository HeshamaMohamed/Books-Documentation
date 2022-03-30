# this class represents the Junctions/Switches/Deadends in the labyrinth
class Node
  # STATES = 
  attr_reader :name, :neighbors

  def initialize(name, neighbors = [])
    @name = name
    @neighbors = neighbors
    @discovered = false
    @state = 0
    @states = { not_started: 0, in_progress: 1, finished: 2 }.freeze
  end

  def dead_end?
    neighbors.empty?
  end

  def add_neighbor(neighbors)
    neighbors.is_a?(Array) ? @neighbors += neighbors : @neighbors << neighbors
  end

  def not_started?
    @state == @states[:not_started]
  end

  def in_progress?
    @state == @states[:in_progress]
  end

  def finished?
    @state == @states[:finished]
  end

  def start_progress
    @state = @states[:in_progress]
  end

  def finish
    @state = @states[:finished]
  end
end
