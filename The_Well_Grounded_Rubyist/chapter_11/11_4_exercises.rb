
### Exercise_1

re = %r{(?<first>\w+)\s(?<last>\w+)} # matches a name in form of 'David A. Black'
m = re.match('Hesham Mohamed')
# #<MatchData "Hesham Mohamed" first:"Hesham" last:"Mohamed">
p m[:first]
# 'Hesham'
p m.named_captures
# {"first"=>"Hesham", "last"=>"Mohamed"}

### Exercise_2

re = %r{(?<first>\w+)\s?(?<last>\w+)?} # matches a name in form of 'David A. Black'
m = re.match('Etsho')
p m
#<MatchData "Etsho" first:"Etsho" last:nil>
p m[:first]
# 'Etsho'
p m.named_captures
# {"first"=>"Etsho", "last"=>nil}
