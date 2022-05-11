def fussy_method(x)
  raise ArgumentError, 'I need a number under 10' unless x < 10
end

begin
  fusssy_method(20)
rescue ArgumentError
  puts 'That was not an acceptable number!'
end


# raise "Problem!"
# is equivelant to
# raise RuntimeError, "Problem!"