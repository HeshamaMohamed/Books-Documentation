require 'set'

p small_states = Set.new(['Connecticut', 'Delaware', 'Rhode Island'])
# #<Set: {"Connecticut", "Delaware", "Rhode Island"}>
p tiny_states = Set.new(['Delaware', 'Rhode Island'])
# #<Set: {"Delaware", "Rhode Island"}>
p tiny_states.subset?(small_states)
# true
p small_states.superset?(tiny_states)
# true
