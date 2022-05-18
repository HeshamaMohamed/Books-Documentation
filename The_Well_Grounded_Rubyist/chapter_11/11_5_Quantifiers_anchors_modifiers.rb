### Quantifiers
/Mrs?\.?/ # this accepts 'Mr,', 'Mrs,', 'Mr.,', 'Mrs.', 'ABCMr.', 'Mrs!'

/\d\d?/ # this accepts '1', '55', '03' or any consecutive 2 digits.

/<\s*\/\s*poem\s*>/ # this accepts </poem>, <   /poem>, <             /poem>, etc..

/\d+/ # this accepts 1 or more consective digits.

/\d+/.match?("There's a digit here somewh3re...")
# true
/\d+/.match?('No digits here. Move along.')
# false
/\d+/.match?('Digits-R-Us 2345')
# true
/\d+/.match('Digits-R-Us 2345')[1] # greedy quantifier
# '2345'
/\d+?/.match('Digits-R-Us 2345')[1] # non-greedy quantifier
# '2'

string = 'abc!def!ghi!'
/.+!/.match(string)[0] # greedy quantifier
# 'abc!def!ghi!'
/.+!?/.match(string)[0] # non-greedy quantifier
# 'abc!'

/\d+5/.match('Digits-R-Us 2345')

/(\d+)(5)/.match('Digits-R-Us 2345')
# #<MatchData '2345' 1:'234' 2:'5'>
/(\d)(5)/.match('Digits-R-Us 2345')
# #<MatchData '45' 1:'4' 2:'5'>

/\d{3}-\d{4}/ # this accepts exactly 3 consecutifve digits, a hypen, then exactly a 4 consecutive digits 555-1212
/\d{1,10}/ # this accepts a range of consecutive digits varying from 1 digit to 10 digits.
/\d{3,}/ # this accepts 3 or more consecutive digits.

# /\d{10,2}/ # fatal error, can't be more than 10 and less than 2

/([A-Z]){5}/.match('David BLACK')
# #<MatchData 'BLACK' 1:'K'>
/([A-Z]{5})/.match('David BLACK')
# #<MatchData 'BLACK' 1:'BLACK'>

comment_regexp = /^\s*#/
comment_regexp.match('   # Pure comment!')
# #<MatchData '   #'>
comment_regexp.match('   x = 1   # Code plus comment!')
# nil

str = '123 456. 789'
p m = /\d+(?=\.)/.match(str)
# #<MatchData "456">

re = /(?<=David )BLACK/ # This accepts 'BLACK' only when it is preceded by 'David'

p re = /(?<!David )BLACK/ # this accepts 'BLACK' only when it is not preceded by 'David'

str = 'abc def ghi'
m = /(abc) (?:def) (ghi)/.match(str) # accepts the pattern but doesn't add 'def' to the captures.
# #<MatchData "abc def ghi" 1:"abc" 2:"ghi">

re = /(a)?(?(1)b|c)/
re.match('ab')
# #<MatchData 'ab' 1:'a'>
re.match('b') # accepts 'b' only if capture(1) is found which is 'a', otherwise it accepts 'c'
# nil
re.match('c')
# #<MatchData 'c' 1:nil>
/(?<first>a)?(?(<first>)b|c)/

### Modifiers

/abc/i # this makes the match operation case insensitive.
str = "This (inlcuding\nwhat's in parens\n) takes up three lines."
m = /\(.*?\)/m.match(str) # without the m modifier, the dot wouldn't match the newline characters. it would fail after not finding a ')' in the first line
p m[0]
# "(inlcuding\nwhat's in parens\n)"

/
  \((\d{3})\)
    \s
  (\d{3})
    -
  (\d{4})
/x # this makes the parser ignore white space unless it is escaped by a backslash

/\((\d{3})\)\s(\d{3}) - (\d{4})/ # this is equivelant to the previous regexp
