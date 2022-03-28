require 'byebug'
require_relative 'Node'

def recursive_depth_first(current_node, goal)
  # debugger
  return if current_node.discovered?

  if current_node.name == goal
    p 'found goal in recursive DFS'
    exit
  end
  current_node.discover
  current_node.neighbors.each { |neighbor| recursive_depth_first(neighbor, goal) } unless current_node.dead_end?
end