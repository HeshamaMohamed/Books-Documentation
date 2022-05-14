h = {1 => 'one', 2 => 'more than 1', 3 => 'more than 1'}
# {1 => 'one', 2 => 'more than 1', 3 => 'more than 1'}
h.has_key?(1)
# true
h.include?(1) # same as has_key?
h.key?(1) # same as has_key?
h.member?(1) # same as has_key?
h.has_value?('three')
# false
h.value?('three')
h.empty? # same as has_value?
# false
h.size # number of key/value pairs
# 2
