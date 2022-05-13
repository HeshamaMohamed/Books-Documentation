string = 'Ruby is a cool language.'

string.include?('Ruby')
# true
string.include?('English')
# false
string.start_with?('Ruby')
# true
string.end_with('!!!')
# false
string.start_with?(/[A-Z]/)
# true
string.empty?
# false
''.empty?
# true
string.size
# 24
string.count('a')
# 3
string.count('g-m') # range of chars between g-m
# 5
string.count('A-Z')
# 1
string.count('aey. ') # how many of these three letters, period, and space.
# 10
string.count('^aey. ') # negation of the above.
# 14
string.count('^g-m')
# 19
string.count('^g-m') + string.count('g-m') == string.size
# true
string.count('ag-m')
# 8
string.count('ag-m', '^l') # counts a, g-m except for l
# 6
string.index('cool')
# 10
string.index('l')
# 13
string.rindex('l') # the index starting count from the right.
# 15
'a'.ord # ordinal code
# 97
'abc'.ord # it outputs only the ordinal code of the first char.
# 97
97.chr # outputs the char of the given ordinal code
# 'a'
'a' <=> 'b'
# -1
'b' > 'a'
# true
'a' > 'A'
# true
'.' > ','
# true
'string' == 'string'
# true
'string' == 'house'
# false
'a' == 'a'
# true
'a'.eql?('a')
# true
'a'.equal?('a')
# false
