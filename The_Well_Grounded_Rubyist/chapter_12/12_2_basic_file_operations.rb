p f = File.new('12_2_1_ticket2.rb')
# #<File:12_2_1_ticket2.rb>
p f.read
# "class Ticket\n  def initialize(venue, date)\n    @venue = venue\n    @date = dateend\n  end\n  def price=(price)\n    @price = price\n  end\n  def venue\n    @venue\n  end\n  def date\n    @date\n  end\n  def price\n    @price\n  end\nend"
f.close

f = File.new('12_2_1_ticket2.rb')
p f.gets # reads one line
# "class Ticket\n"
p f.gets
# "  def initialize(venue, date)\n"
p f.gets
# "    @venue = venue\n"
f.rewind # reset the file, get to the beginning of a file.


p f.read
# "class Ticket\n  def initialize(venue, date)\n    @venue = venue\n    @date = dateend\n  end\n  def price=(price)\n    @price = price\n  end\n  def venue\n    @venue\n  end\n  def date\n    @date\n  end\n  def price\n    @price\n  end\nend"
p f.gets
# nil
# p f.readline
# 12_2_basic_file_operations.rb:19:in `readline': end of file reached (EOFError)
f.rewind


p f.readlines
# ["class Ticket\n", "  def initialize(venue, date)\n", "    @venue = venue\n", "    @date = dateend\n", "  end\n", "  def price=(price)\n", "    @price = price\n", "  end\n", "  def venue\n", "    @venue\n", "  end\n", "  def date\n", "    @date\n", "  end\n", "  def price\n", "    @price\n", "  end\n", "end"]
f.close

f = File.new('12_2_1_ticket2.rb')
f.each { |line| puts "Next line: #{line}" }
# Next line: class Ticket
# Next line:   def initialize(venue, date)
# Next line:     @venue = venue
# etc...
f.rewind

p f.getc
# 'c'
f.ungetc('X') # put a 'X' back onto the file-input stream so it's the first character read on the next read.
f.gets
# "Xlass Ticket \n"

f.rewind
f.read
f.getc
# nil
f.readchar
# EOFError (end of file reached)
f.getbyte
# nil
f.readbyte
# EOFError (end of file reached)

f.rewind
p f.pos
# 0
p f.gets
"class Ticket\n"
p f.pos
# 13
f.pos = 10
p f.gets
# "et\n"

f.seek(20) # is equivelant to f.pos = 20
f.seek(20, IO::SEEK_SET) # offsets the pointer 20 bytes from starting position of the file
f.seek(15, IO::SEEK_CUR) # offsets the pointer 15 bytes from the current position 
f.seek(-10, IO::SEEK_CUR) # offsets the pointer 10 bytes before the end of the file.

full_text = File.read('12_2_5_myfile.txt') # outputs a string contains all file text
lines_of_text = File.readlines('12_2_5_myfile.txt') # outputs array of file lines.

f = File.new('12_2_7_data.out', 'w')
f.puts 'David A. Black, Rubyist'
f.close
puts File.read('12_2_7_data.out')
f = File.new('data.out', 'a')
f.puts 'Joe Leo III, Rubyist'
f.close
puts File.read('data.out')

count = 0
# total_ages = File.readlines('12_2_8_members.txt').inject(0) do |total, line| # creates intermediate array and operates on it.
total_ages = File.open('12_2_8_members.txt') do |f|
  f.inject(0) do |total, line| # perform operation directly on file, no intermediate array is created.
    count += 1
    fields = line.split
    age = fields[3].to_i
    total + age
  end
end
puts "Average age of group: #{total_ages / count}."

File.open('no_file_with_this_name')
# Errno::ENOENT (No such file or directory @ rb_sysopen - no_file_with_this_name)
f = File.open('/tmp')
# #<File:/tmp>
f.gets
# Errno::EISDIR (Is a directory @io_fillbuff - /tmp)
File.open('/var/root')
# Errno::EACCES (Permission denied - /var/root)