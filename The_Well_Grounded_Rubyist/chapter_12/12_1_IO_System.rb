p STDERR.class
# IO
STDERR.puts('Problem!')
# 'Problem!'
# nil
STDERR.write("Problem!\n")
# 'Problem!'
# 9 # number of bytes written

STDIN.each {|line| p line}
# This is line 1 -> input
# 'This is line 1\n' -> output
# This is line 2
# 'This is line 2\n'
# All separated by $/, which is a newline character
# 'All separated by $/, which is a newline character\n'

$/ = 'NEXT' # now STDIN determines the end of the line when it finds 'NEXT'
# 'NEXT'
STDIN.each { |line| p line }
# First line -> input
# NEXT -> input
# 'First line\nNEXT' -> output
# Next line -> input
# Where 'line' really means -> input
# until we see... NEXT -> input
# "\nNext line\nwhere \"line\" really means\nuntil we see... NEXT" -> output

STDIN.select { |line| line =~ /\A[A-Z]/ }
# We're only interested in -> input
# lines that begin with    -> input
# Uppercase letters        -> input
# ["We're only interested in\n", "Uppercase letters\n"] -> output

STDIN.map { |line| line.reverse }
# senil esehT       -> input
# terces a niatnoc  -> input
# .egassem          -> input
# ["\nThese lines", "\ncontain a secret", "\nmessage."]

if broken?
  STDERR.puts "There's a problem!"
end


