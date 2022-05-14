h = Hash[1, 2, 3, 4, 5, 6]
p h
# {1 => 2, 3 => 4, 5 => 6}
h.select { |k, v| k > 1 }
# {3 => 4, 5 => 6}

h.reject { |k, v| k > 1 }
# {1 => 2}

h = { street: '127th Street', apt: nil, borough: 'Manhattan' }.compact # use compact! for inplace effect.
p h
# { street: '127th Street', borough: 'Manhattan' }

h = {1 => 'one', 2 => 'two'}
# {1 => 'one', 2 => 'two'}
h.invert # becarful of duplicate values before inverting as only 1 unique key will stay.
# {'two' => 2, 'one' => 1} 
h = {1 => 'one', 2 => 'more than 1', 3 => 'more than 1'}
# {1 => 'one', 2 => 'more than 1', 3 => 'more than 1'}
h.invert
# { 'one' => 1, 'more than 1' => 3}
h.clear
p h
# { }
{1 => 'one', 2 => 'two'}.replace({ 10 => 'ten', 20 => 'twenty' })
