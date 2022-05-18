# '//' is the regexp literal constructor.

p //.class
# Regexp
%r{}.class # synonym for '//'
# Regexp

# #match? works both ways
/abc/.match?('The alphabet starts with abc.') 
# true
'The alphabet starts with abc.'.match?(/abc/)
# true

puts 'Match!' if /abc/ =~ 'The alphabet starts with abc.'
puts 'Match1' if 'The alphabet starts with abc.' =~ /abc/

/abc/.match('The alphabet starts with abc.')
# #<MatchData 'abc'>
/abc/.match('def')
# nil

'The alphabet starts with abc.' =~ /abc/ # returns the starting index of the pattern occurence in the string.
# 25
