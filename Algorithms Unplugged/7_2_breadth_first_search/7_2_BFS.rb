# require 'byebug'
require_relative 'Node'

def breadth_first(current_node, goal)
  # debugger

  queue = []
  queue.push(current_node) unless current_node.discovered?
  current_node.discover
  until queue.empty?
    current = queue.shift
    if current.name == goal
      p 'found goal'
      return true
    end
    current.neighbors.each do |neighbor|
      until neighbor.discovered?
        queue.push(neighbor)
        neighbor.discover
      end
    end
  end
end

node_a = Node.new('A')
node_b = Node.new('B')
node_c = Node.new('C')
node_d = Node.new('D')
node_e = Node.new('E')
node_f = Node.new('F')
node_g = Node.new('G')
node_h = Node.new('H')

node_a.add_neighbor(node_c)
node_b.add_neighbor(node_c)
node_c.add_neighbor([node_b, node_e, node_d, node_a])
node_d.add_neighbor(node_c)
node_e.add_neighbor([node_g, node_f, node_c])
node_f.add_neighbor(node_c)
node_g.add_neighbor([node_h, node_e])
node_h.add_neighbor(node_g)

p breadth_first(node_a, 'F')
