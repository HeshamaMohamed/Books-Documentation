# lastname, firstname, title, occupation
/[A-Za-z]+,[A-Za-z]+,Mrs?\./.match('Peel,Emma,Mrs.,talented amateur') # '?' after Mrs means zero or more. to match Mr or Mrs.
# #<MatchData 'Peel,Emma,Mrs.'>
/([A-Za-z]+),[A-Za-z]+,(Mrs?\.)/.match('Peel,Emma,Mrs.,talented amateur')
# #<MatchData "Peel,Emma,Mrs." 1:"Peel" 2:"Mrs.">
p $1 # $1 contains substring match from first parentheses from the left in the pattern ([A-Za-z]+)
# 'Peel'
p $2 # $2 contains substring match from second parentheses from the left in the pattern ([A-Za-z]+)
# 'Mrs.'
# $n contains substring from nth parentheses from the left in the pattern
p Regexp.last_match(1), Regexp.last_match(2) # same as $1, $2
# 'Peel', Mrs.
puts "Dear #{$2} #{$1}"

/a/.match('b')
# nil

m = /((a)((b)c))/.match('abc')
#<MatchData "abc" 1:"abc" 2:"a" 3:"bc" 4:"b">
p m[0] # whole string matched with pattern
# 'abc' 
p m[1] # first match
# 'abc'
p m[2] # second match, etc..s
# 'a'
p m.captures # outputs array of matches.
# ['abc', 'a', 'bc', 'b']
p m[1] # second match
# 'a'

### names captures
re = %r{(?<first>\w+)\s((?<middle>\w\.)\s+)(?<last>\w+)} # matches a name in form of 'David A. Black'
m = re.match('David A. Black')
# #<MatchData "David A. Black" first:"David" middle:"A." last:"Black">
p m[:first]
# 'David'
p m.named_captures
# {"first"=>"David", "middle"=>"A.", "last"=>"Black"}

re = /(?<first>\w{3})\s+((?<last>\w{3}),?\s?)(?<suffix>\w+\.?)?/
p re.match('Joe Leo III')
#<MatchData "Joe Leo III" first:"Joe" last:"Leo" suffix:"III">
m = re.match('Joe Leo Jr.')
# #<MatchData "Joe Leo Jr." first:"Joe" last:"Leo" suffix:"Jr.">
p m.named_captures
# {"first"=>"Joe", "last"=>"Leo", "suffix"=>"Jr."}
m = re.match('Joe Leo')
# #<MatchData "Joe Leo" first:"Joe" last:"Leo" suffix:nil>
p m[:suffix]
# nil
