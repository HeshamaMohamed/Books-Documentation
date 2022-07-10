def x
  y
end

def y
  z
end

def z
  puts 'Stracktrace: '
  p caller
end

x
# ["15_4_1_tracedemo.rb:6:in `y'",
#  "15_4_1_tracedemo.rb:2:in `x'",
#  "15_4_1_tracedemo.rb:14:in `<main>'"]

def z
  raise
end

x
# Traceback (most recent call last):
#         3: from 15_4_1_tracedemo.rb:23:in `<main>'
#         2: from 15_4_1_tracedemo.rb:2:in `x'
#         1: from 15_4_1_tracedemo.rb:6:in `y'
# 15_4_1_tracedemo.rb:20:in `z': unhandled exception
