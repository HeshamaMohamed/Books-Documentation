# This is the algorithm i came up with after reading the chapter
# its idea is pretty simple; looping over all the nodes and picking up the ones who has no parents (dependencies)
# then looping through the rest and removing the these nodes if it were found as someone's parent.
# it also detects cyclic graphs and returns nil(when there's more nodes and all of them have parents)

# require 'byebug'

# The graph that holds the nodes of the graph
class Graph
  attr_accessor :node_list

  def initialize(node_list)
    @node_list = node_list
  end
end

# the node that holds the value and the pointer to its child
class Node
  attr_accessor :parents, :value

  def initialize(value, parents = [])
    @value = value
    @parents = parents
  end

  def has_parents?
    !@parents.empty?
  end
end

def top_sort(graph)
  node_list = graph.node_list.dup
  node_stack = []

  until node_list.empty?
    # debugger
    orphan_nodes = node_list.reject(&:has_parents?) # picks nodes without parents (no dependencies)
    orphan_nodes.each { |node| node_list.delete(node) }
    return nil if orphan_nodes.empty?

    node_list.each do |node|
      if node.has_parents?
        orphan_parents = (node.parents & orphan_nodes) # the intersection of the two arrays
      end
      orphan_parents&.each { |parent| node.parents.delete(parent) } # deleting the pointers "edges" from the nodes
    end
    orphan_nodes.each { |orphan| node_stack << orphan } # adding nodes to the sorted stack
  end
  node_stack.each { |node| p node.value }
end

node_a = Node.new('A')
node_b = Node.new('B')
node_f = Node.new('F')
node_c = Node.new('C', [node_a])
node_e = Node.new('E', [node_f])
node_d = Node.new('D', [node_f, node_e])

node_list = [node_a, node_b, node_c, node_d, node_e, node_f]
graph = Graph.new(node_list)

puts top_sort(graph)
