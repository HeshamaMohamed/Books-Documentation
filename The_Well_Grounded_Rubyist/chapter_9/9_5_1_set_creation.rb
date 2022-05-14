require 'set'

new_england = ['Connecticut', 'Maine', 'Massachusetts', 'New Hampshire', 'Rhode Island', 'Vermont']
# ['Connecticut', 'Maine', 'Massachusetts', 'New Hampshire', 'Rhode Island', 'Vermont']
state_set = Set.new(new_england)
# #<Set: {'Connecticut', 'Maine', 'Massachusetts', 'New Hampshire', 'Rhode Island', 'Vermont'}>

names = ['David', 'Yukihiro', 'Chad', 'Amy']
# ['David', 'Yukihiro', 'Chad', 'Amy']
name_set = Set.new(names) { |name| name.upcase }
# #<Set: {'DAVID', 'YUKIHIRO', 'CHAD', 'AMY'}>