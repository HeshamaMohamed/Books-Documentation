# this class represents the Junctions/Switches/Deadends in the labyrinth
class Node
  attr_reader :name, :neighbors

  def initialize(name, neighbors = [])
    @name = name
    @neighbors = neighbors
    @discovered = false
  end

  def dead_end?
    neighbors.empty?
  end

  def discovered?
    @discovered
  end

  def discover
    @discovered = true
  end

  def add_neighbor(neighbors)
    neighbors.is_a?(Array) ? @neighbors += neighbors : @neighbors << neighbors
  end
end
