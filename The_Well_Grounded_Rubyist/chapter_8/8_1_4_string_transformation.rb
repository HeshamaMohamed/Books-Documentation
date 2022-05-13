name = 'David A. Black'
p name.upcase
# 'DAVID A. BLACK'
p name.downcase
# 'david a. black'
p name.swapcase
# 'dAVID a. bLACK'
first_name = 'david'
first_name.capitalize
# David
name.rjust(25) # total string.count = 25
# '           David A. Black'
name.ljust(25)
# 'David A. Black           '
name.rjust(25, '.')
# '...........David A. Black'
name.rjust(25, '><')
# '><><><><><>David A. Black'
name.center(24, '*') # odd numbered padding spots are rendered right-heavy
# *****David A. Black*****
name = name.center(24)
# '     David A. Black     '
name.lstrip
# David A. Black     '
name.rstrip
# '     David A. Black'
name.strip!
# David A. Black
name.chop
# 'David A. Blac'
'David A. Black\n'.chomp # default target substring to remove is '\n'
# 'David A. Black'
name.chomp('ck')
# 'David A. Bla'
name.clear # inplace.
# ''
p name
# ''
name = '(to be named later)'
name.replace('David A. Black') # inplace.
# 'David A. Black'
name
# 'David A. Black'
'David A. Black'.delete('abc')
# 'Dvid A. Blk'
'David A. Black'.delete('^abc')
# aac
'David A. Black'.delete('a-e', 'e^c')
# Dvi A. Blck
'David A. Black'.crypt('34')
# '347OEY.7YRmio'
'a'.succ
# 'b'
'abc'.succ
# 'abc'
'azz'.succ
# 'baa'

