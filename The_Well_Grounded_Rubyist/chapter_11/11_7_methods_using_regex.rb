array.find_all { |e| e.size > 10 and /\d/.match(e) }

'testing  1 2 3 testing 4 5 6'.scan(/\d/)
# ['1', '2', '3', '4', '5', '6']

str = 'Leopold Auer was the teacher of Jascha Heifetz.'
violinists = str.scan(/([A-Z]\w+)\s+([A-Z]\w+)/)
# [['Leopold', 'Auer'], ['Jascha', 'Heifetz']]

violinsts.each do |fname, lname|
  puts "#{lname}'s first name was #{fname}"
end

str.scan(/([A-Z]\w+)\s+([A-Z]\w+)/) do |fname, lname| # equivelant to the above example.
  puts "#{lname}'s first name was #{fname}"
end

'one two three'.scan(/\w+/) { |n| puts "Next number: #{n}" }

require 'strscan'
# true
ss = StringScanner.new('Testing string scanning')
# #<StringScanner 0/23 @ 'Testing string scanner'>
ss.scan_until(/ing/) # scans string until regexp matches
# 'Testing'
ss.pos # examine new pointer position
# 7
ss.peak(7) # looks at next 7 bytes (but doesn't advance pointer)
# ' string'
ss.unscan # undoes previous scan
ss.pos
# 0
ss.skip(/Test/) # Moves pointer past regex
# 4
ss.rest # Examines part of string to right of pointer
# 'ing string scanning'

'Ruby'.split(//)
# ['R', 'u', 'b', 'y']

line = 'first_name=david;last_name=black;country=usa'
record = line.split(/=|;/)
# ['first_name', 'david', 'last_name', 'black', 'country', 'usa']
data = []
record = Hash[*line.split(/=|;/)] # uses * to turn array into bare list to feed to Hash
data.push(record)

'a,b,c,d,e'.split(/,/, 3) # second argument limits number of items returned.
# ['a', 'b', 'c,d,e']
# split stops once it has 3 elements to return and puts everything that's left (commas and all) in the third string.

'typigraphical error'.sub(/i/,'o') # whatever part is matched by /i/ will be replaced with 'o'
# 'typographical error'

'capitalize the first vowel'.sub(/[aeiou]/) { |s| s.upcase }
# 'cApitalize the first vowel'
'capitalize every word'.sub(/\b\w/) { |s| s.upcase }
# 'Capitalize Every Word'

'aDvid'.sub(/([a-z])([A-Z])/, '\2\1')
# 'David'

'double every word'.gsub(/\b(\w+)/, '\1 \1')
# 'double double every every word word'

/(abc)/.match('abc')
# #<MatchData 'abc' 1:'abc'>
'aDvid'.sub(/([a-z])([A-Z])/, "#{$2}#{$1}") # sticking to the \1 style references is safer than using $1,$2,etc..
# 'abcvid'

puts 'Match!' if re.match(string) # returns nil or MatchData object
puts 'Match!' if string =~ re # returns Integer offset
puts 'Match!' if re === string # returns true/false

print 'Continue? (y/n) '
answer = gets
case answer
when /^y/i
  puts 'Great!'
when /^n/i
  puts 'Bye!'
  exit
else
  puts 'Huh?'
end

['USA', 'UK', 'France', 'Germany'].grep(/[a-z]/)
# ['France', 'Germany']
['USA', 'UK', 'France', 'Germany'].select { |c| /[a-z]/ === c }
# ['France', 'Germany']
['USA', 'UK', 'France', 'Germany'].grep(/[a-z]/) { |c| c.upcase}
# ['FRANCE', 'GERMANY']

[1, 2, 3].grep(/1/) # it won't select anything other than strings.
# []
