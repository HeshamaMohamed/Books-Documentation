require_relative 'Node'
# require 'byebug'

def search_cycle(node)
  loop do
    # debugger
    if node.in_progress?
      puts 'cycle has been found'
      exit
    elsif node.not_started?
      node.start_progress
      node.neighbors.each { |neighbor| search_cycle(neighbor) }
      node.finish
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
node_e.add_neighbor(node_a)

search_cycle(node_a)
