states = ['all states of US with their abbreviations as key/value pairs']

states.include?('Louisiana')
# true
states.all? { |state| state =~ / / } # all states include space?
# false
states.any? { |state| state =~ / / } # any state include space?
# true
states.one? { |state| state =~ /West/ } # only one state include 'West' in its name?
# true
states.none? { |state| state =~ /East/ } # none of the states include 'East' in its name?
# true

states.include?('Louisiana') # searches in keys only.
# true
states.all? { |state, abbr| state =~ / / } # hash enumeration yields key, value
# false
states.one? { |state, abbr| state =~ /West/ } # only one state include West?
# true
states.keys.all? { |state| state =~ / / } # here we are iterating over only keys of the hash.
# false
# this is slightly wasteful of memory as it creates an array containing all the keys only.

r = Range.new(1, 10)
r.one? { |n| n == 5 }
# true
r.none? { |n| n % 2 == 0 }
# false
r = Range.new(1.0, 10.0)
r.one? { |n| n == 5 }
# TypeError (can't iterate from Float)
# We can't do equality operaton on float ranges as they can't be expressed as a list of discrete elements.
# but we can do other operations that depends only on comparing the number to the beggining/ending of the range.
# NOTE: you can use a float as a range's end point and still get enumeration, as long as the start point is an integer.
r = Range.new(1, 10.3)
r.any? { |n| n > 5 }
# true
