require_relative '7_1_Recursive_DFS'
require_relative '7_1_Iterative_DFS'

node_a = Node.new('A')
node_b = Node.new('B')
node_c = Node.new('C')
node_d = Node.new('D')
node_e = Node.new('E')
node_f = Node.new('F')
node_g = Node.new('G')
node_h = Node.new('H')
node_x = Node.new('X')
node_y = Node.new('Y')

node_a.add_neighbor(node_c)
node_b.add_neighbor(node_c)
node_c.add_neighbor([node_b, node_e, node_d, node_a])
node_d.add_neighbor(node_c)
node_e.add_neighbor([node_x, node_g, node_f, node_c])
node_f.add_neighbor(node_c)
node_g.add_neighbor([node_h, node_e, node_y])
node_h.add_neighbor(node_g)
node_x.add_neighbor([node_y, node_e])
node_y.add_neighbor([node_g, node_x])

p iterative_depth_first(node_a, 'F')
p recursive_depth_first(node_a, 'F')
