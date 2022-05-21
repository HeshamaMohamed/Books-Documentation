system('date')
# Sat May 21 10:22:14 EET 2022
# system('cat')
# What I type on the screen gets printed
# What I type on the screen gets printed

# system('grep "D"')
# it captures anything I write that has the letter D
# it captures anything I write that has the letter D

system('datee')
# nil

p $?
# #<Process::Status: pid 19970 exit 127>
p Thread.new { system('datee'); p $? }.join # each thread has its own $?
# #<Process::Status: pid 19972 exit 127>
p $?
# #<Process::Status: pid 19970 exit 127>

### Backticks   ``, the difference between system and backticks is with backticks you get the output of the program you run.
d = `date`
puts d
# Sat May 21 10:27:18 EET 2022
output = `cat`
# I'm typing into cat. Since i'm using backticks,
# I won't see each line echoed back as I type it.
# Instead, cat's output is going into the variable output.
puts output
# I'm typing into cat. Since i'm using backticks,
# I won't see each line echoed back as I type it.
# Instead, cat's output is going into the variable output.

`datee`
# No such file or directory - datee (Errno::ENOENT)

%x{date}
# Sat May 21 10:27:18 EET 2022
%x(date)
# Sat May 21 10:27:18 EET 2022
%x-date-
# Sat May 21 10:27:18 EET 2022
command = 'date'
%x(#{command})
# Sat May 21 10:27:18 EET 2022

d = open("|cat", "w+")
d.puts "Hello to cat"
d.gets
# "Hello to cat\n"
d.close

open("|cat", "w+") { |p| p.puts('hi'); p.gets }
# "hi\n"


require 'open3'
stdin, stdout, stderr = Open3.popen3('cat')
stdin.puts("Hi.\nBye")
stdout.gets
# "Hi.\n"
stdout.gets
# "Bye.\n"
