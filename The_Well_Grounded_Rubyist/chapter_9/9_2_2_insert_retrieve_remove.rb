a = []
a[0] = 'first'
# ['first']
a = [1, 2, 3, 4, 5]
# [1 , 2, 3, 4, 5]
p a[2]
# [3]
a = %w(red orange yellow purple gray indigo violet)
# ['red', 'orange', 'yellow', 'purple', 'gray', 'indigo', 'violet']
p a[3, 2]
# ['purple', 'gray']
a[3,2] = 'green', 'blue'
p a
# ['red', 'orange', 'yellow', 'green', 'blue', 'indigo', 'violet']
a = %w(red orange yellow purple gray indigo violet)
# ['red', 'orange', 'yellow', 'purple', 'gray', 'indigo', 'violet']
p a[3..5]
# ['purple', 'gray', 'indigo']
a[1..2] = 'green', 'blue'
# ['green', 'blue']
p a
# ['red', 'green', 'blue', 'purple', 'gray', 'indigo', 'violet']
array = %w(the dog ate the cat)
articles = array.values_at(0, 3)
p articles
# ['the', 'the']

arr = [[1], 2, 3, [4, 5]]
p arr[0]
# [1]
p arr[3][0]
# 4
p arr.dig(3,0)
# 4
p [['Joe', %w(loves Lucky,), 'his'], 'adorable', ['daughter']].dig(0, 1, 1)
a = [1, 2, 3, 4]
a.unshift(0)
# a == [0, 1, 2, 3, 4]
a.push(5)
# a == [0, 1, 2, 3, 4, 5]
a << 6
# a == [0, 1, 2, 3, 4, 5, 6]
a.push(7, 8, 9)
# a == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
a.pop
# 5
# a == [0, 1, 2, 3, 4, 5, 6, 7, 8]
a.shift
# 0
p a
# [1, 2, 3, 4, 5, 6, 7, 8, 9]
a.pop(2)
# [8, 9]
# a == [0, 1, 2, 3, 4, 5, 6, 7]
a.shift(2)
# [0, 1]
# a == [2, 3, 4, 5, 6, 7, 8, 9]
