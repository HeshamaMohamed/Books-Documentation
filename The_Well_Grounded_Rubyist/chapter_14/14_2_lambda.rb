lam = lambda { puts 'A lambda!' }
lam.call
# 'A lambda!'

lam = lambda { |x| p x}
lam.call(1)
# 1
lam.call # unlike procs which return nil when called w/o paramters
# ArgumentError (wrong number of arguments (given 0, expected 1))
lam.call(1, 2, 3) # unlike procs which takes first argument and discard rest of arguments.
# ArgumentError (wrong number of arguments (given 3, expected 1))

def return_test
  l = lambda { return } # returns from the lambda code block
  l.call
  puts 'Still here!'
  p = Proc.new { return } # returns from the whole method block.
  p.call
  puts "You won't see this message!"
end
return_test
# 'Still here!'

Proc.new { return }.call
# Fatal Error because we're not inside any method we can return from.

lam = -> { puts 'hi' }
lam.call
# 'hi'
mult = ->(x, y) { x * y }

mult.call(3, 4)
# 12
