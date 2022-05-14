a = Array.new
# []
Array.new(3)
# [nil, nil, nil]
Array.new(3, 'abc')
# ['abc', 'abc', 'abc']
Array.new(3) { |i| 10 * (1 + 1) }
# [10, 20, 30]
Array.new(3) { [] }
# [[], [], []]

a = []
# []
a = [1, 2, 'three', 4, []]
# [1, 2, 'three', 4, []]
[1, 2, 3][1]
# [2]

string = 'A string'
# 'A string'
string.respond_to?(:to_ary)
# false
string.respond_to?(:to_a)
# false
Array(string)
# ['A string']
def string.to_a
  split(//)
end
array(string)
# ['a', ' ', 's', 't', 'r', 'i', 'n', 'g']

# %w stands for words, small 'w' will make single quotes while Capital 'W' will make double quotes
%w(Joe Leo III)
# ['Joe', 'Leo', 'III']
%w{ Joe Leo III }
# ['Joe', 'Leo', 'III']
%w(David\ A.\ Black is a Rubyist)
# ['David A. Black', 'is', 'a', 'Rubyist.']
%W(David A. Black is a Rubyist)
# ["David", "A.", "Black", "is", "a", "Rubyist"]


%i(a b c)
# [:a, :b, :c]
d = 'David'
# 'David'
%I["#{d}"]
# [:"\"David\""]


obj = Object.new
Array.try_convert(obj)
def obj.to_ary
  [1, 2, 3]
end
Array.try_convert(obj)
# [1, 2, 3]

def obj.to_arry
  'Not an array!'
end
Array.try_convert(obj)
# TypeError: can't convert Object to Array (Object#to_ary gives String...)

