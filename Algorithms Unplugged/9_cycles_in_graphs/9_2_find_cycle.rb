require_relative 'Node'
# require 'byebug'

def find_cycle(node, path = [])
  loop do
    # debugger
    if node.in_progress? # got back to a node we're already descending from it.
      starting_index = path.find_index(node.name)
      cycle_path = path[starting_index...path.length]
      puts "cycle has been found in the following order #{cycle_path}"
      exit
    elsif node.not_started?
      node.start_progress
      path << node.name
      node.neighbors.each { |neighbor| find_cycle(neighbor, path) }
      node.finish
      path.pop
    end
  end
end

node_a = Node.new('A')
node_b = Node.new('B')
node_c = Node.new('C')
node_d = Node.new('D')
node_e = Node.new('E')

node_a.add_neighbor([node_b, node_c])
node_b.add_neighbor(node_d)
node_d.add_neighbor(node_e)
node_e.add_neighbor(node_b)

find_cycle(node_a)
