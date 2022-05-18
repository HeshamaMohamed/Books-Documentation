str = 'def'
# 'def'
/abc#{str}/
# /abcdef/

str = 'a.c'
# 'a.c'
re = /#{str}/
# /a.c/
re.match('a.c')
# #<MatchData 'a.c'>
re.match('abc')
# #<MatchData 'abc'>

Regexp.escape('a.c')
# 'a\\.c'
Regexp.escape('^abc')
# '\\^abc'

str = 'a.c'
re = /#{Regexp.escape(str)}/
# /a\.c/
re.match('a.c')
# #<MatchData 'a.c'>
re.match('abc')
# nil

Regexp.new('(.*)\s+Black')
# /(.*)\s+Black/

Regexp.new('Mr\. David Black')
# /Mr\. David Black/
Regexp.new(Regexp.escape('Mr. David Black'))
# /Mr\.\ David\ Black/

puts /abc/
# (?-mix:abc)
# nil
/abc/.inspect
# '/abc'