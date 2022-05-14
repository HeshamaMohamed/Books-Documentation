require 'set'
tri_state = Set.new(['New Jersey', 'New York'])
# #<Set: {'New Jersey', 'New York'}
tri_state << 'Connecticut'
# #<Set: {'New Jersey', 'New York', 'Connecticut'}
tri_state << 'Connecticut' # nothing happens as Connecticut is already there.
# #<Set: {'New Jersey', 'New York', 'Connecticut'}
tri_state << 'Pennsylvania'
# #<Set: {'New Jersey', 'New York', 'Connecticut', 'Pennsylvania'}
tri_state.delete('Connecticut')
# #<Set: {'New Jersey', 'New York', 'Pennsylvania'}
tri_state.add?('Pennsylvania')
# nil

tri_state = Set.new(['Connecticut', 'New Jersey', 'New York'])
# #<Set: {'Connecticut', 'New Jersey', 'New York'}
state_set = Set.new(['Connecticut', 'Maine', 'Massachusetts', 'New Hampshire', 'Rhode Island', 'Vermont'])
p state_set - tri_state # difference
# #<Set: {'Maine', 'Massachusetts', 'New Hampshire', 'Rhode Island', 'Vermont'}>
p state_set + tri_state # union
# #<Set: {'Connecticut', 'Maine', 'Massachusetts', 'New Hampshire', 'Rhode Island', 'Vermont', 'New Jersey', 'New York'}>
p state_set | tri_state # union
# #<Set: {'Connecticut', 'Maine', 'Massachusetts', 'New Hampshire', 'Rhode Island', 'Vermont', 'New Jersey', 'New York'}>
p state_set & tri_state # intersection
# #<Set: {'Connecticut'}>
p state_set ^ tri_state # union - intersection
# #<Set: {"New Jersey", "New York", "Maine", "Massachusetts", "New Hampshire", "Rhode Island", "Vermont"}>

tri_state = Set.new(['Connecticut', 'New Jersey'])
# #<Set: {'Connecticut', 'New Jersey'}>
p tri_state.object_id
# 70368153149900
tri_state.merge(['New York'])
# #<Set: {'Connecticut', 'New Jersey', 'New York'}>
p tri_state.object_id
# 70368153149900
s = Set.new([1, 2, 3])
# #<Set: {1, 2, 3}>
s.merge({ 'New Jersey' => 'NJ', 'Maine' => 'ME' })
# #<Set: {1, 2, 3, ['New Jersey' => 'NJ'] , ['Maine' => 'ME']}>

p state_set = Set.new(['New York', 'New Jersey'])
# #<Set: {"New York", "New Jersey"}>
p state_hash = { 'Maine' => 'ME', 'Vermont' => 'VT' }
# {"Maine"=>"ME", "Vermont"=>"VT"}
p state_set.merge(state_hash.keys)
# #<Set: {"New York", "New Jersey", "Maine", "Vermont"}>

