# require 'byebug'
require_relative 'Node'

def iterative_depth_first(current_node, goal)
  # debugger

  stack = []
  stack.push(current_node) unless current_node.discovered?
  current_node.discover
  until stack.empty?
    current = stack.pop
    if current.name == goal
      p 'found goal in iterative DFS'
      return true
    end
    current.neighbors.reverse.each do |neighbor|
      until neighbor.discovered?
        stack.push(neighbor)
        neighbor.discover
      end
    end
  end
end
