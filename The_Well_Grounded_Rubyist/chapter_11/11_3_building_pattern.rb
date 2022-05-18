

/a/ # matches any string containing the letter 'a'

/\?/ =~ '??' # using '\' before special characters to treat it as it is.
# true
/\/home\/jleo3/ 
%r{/home/jleo3/} # we don't need to escape special characters when using %{} tho

%r{****} =~ '??' 
# true

# special characters include the following [ ^ , $ , ? , . , / , \ , [ , ] , { , } , ( , ) , + , * ]

### . (dot wildcard character)

/.ejected/ # match any string/substring 'ejected' in a string.

/.ejected/.match?('%ejected')
# true

### character classes 
%r{[dr]ejected} # match any 'ejected' followed after 'd' or 'r', either 'dejected' or 'rejected'
%r{[a-z]ejected} # match any 'ejected' after any char from a-z
/[A-Fa-f0-9]/ # match any character from A-F, or a-f (lowercase & uppercase) and any digit

# each character class match one char in the string. /[dr]/ matches either 'd' or 'r', but not 'dr'

### ^ (negating)
%r{[^A-Fa-f0-9]} # matches any character except a valid hexadecimal digit.

string = 'ABC3934 is a hex number.'
string =~ %r{[^A-Fa-f0-9]} # finds the index of the first occurence of a non-hex character in a string.
# 7
string [7..-1]
# ' is a hex number'
string[0...7]
# 'ABC3934'

### special escape sequences for common character classes
/[0-9]/ # matches any digit
/\d/ # matches any digit.
/\w/ # matches any digit, alphabetical character, or underscore (_).
/\W/ # matches anything other than digit, alphabetical character, or underscore (_).
/\s/ # matches any whitespace character (space, tab, newline).
/\S/ # matches anything other than whitespace character (space, tab, newline).






