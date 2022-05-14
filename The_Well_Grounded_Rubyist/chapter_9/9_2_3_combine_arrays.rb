[1, 2, 3].concat([4, 5, 6]) # inplace.
# [1, 2, 3, 4, 5, 6]

a = [1, 2, 3]
b = a + [4, 5, 6]
# [1, 2, 3, 4, 5, 6]
p a
# [1, 2, 3]
a.replace[4, 5, 6] # replaces value within same object
a = [4, 5, 6] # assigns the variable to a different object of value [4, 5, 6].
p a
# [4, 5, 6]

a = [1, 2, 3]
b = a
# [1, 2, 3]
a.replace([4, 5, 6])
p b
# [4, 5, 6], because it refers to the same object as a
a = [7, 8, 9] # assigning a to a new array object with value [7, 8, 9]
p b
# [4, 5, 6] b still refer to the old object, while a refers to the new array object [7, 8, 9]