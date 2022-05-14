array = [1, 2, [3, 4, [5], [6, [7, 8]]]]
# [1, 2, [3, 4, [5], [6, [7, 8]]]]
array.flatten
# [1, 2, 3, 4, 5, 6, 7, 8]
array.flatten(1)
# [1, 2, 3, 4, [5], [6, [7, 8]]]
array.flatten(2) # add ! to the method to make its changes inplace
# [1, 2, 3, 4, 5, 6, [7, 8]]
[1, 2, 3, 4].reverse # add ! to the method to make its changes inplace
# [4, 3, 2, 1]
['abc', 'def', '123'].join
# 'abcdef123'
['abc', 'def', '123'].join(', ')
# 'abc, def, 123'

a = %w(one two three)
# ['one', 'two', 'three']
a * '-'
# 'one-two-three'
[1, 2, 3, 1, 4, 3, 5, 1].uniq # add ! to the method to make its changes inplace
# [1, 2, 3, 4, 5]
zip_codes = ['06511', '08902', '08902', nil, '10027', '08902', nil, '06511']
zip_codes.compact # add ! to the method to make its changes inplace
# ['06511', '08902', '08902', '10027', '08902', '06511']
