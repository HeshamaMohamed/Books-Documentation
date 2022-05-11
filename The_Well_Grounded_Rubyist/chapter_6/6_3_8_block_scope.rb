def block_scope_demo
  x = 100
  1.times do 
    puts x
  end
end
block_scope_demo

def block_scope_demo_2
  x = 100
  1.times do 
    x = 200
  end
  puts x
end
block_scope_demo_2

def block_local_parameter
  x = 100
  [1, 2, 3].each do |x|
    puts "Parameter x is #{x}"
    x = x + 10
    puts "Reassigned to x in block; it's now #{x}"
  end
  puts "Outer x is still #{x}"
end
block_local_parameter
