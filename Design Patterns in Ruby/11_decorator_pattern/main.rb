require_relative 'simple_writer'
require_relative 'writer_decorator'
require_relative 'numbering_writer'
require_relative 'check_summing_writer'
require_relative 'time_stamping_writer'

# What happens here is: 
# 1 - CheckSummingWriter takes the line and calculates its checksum
# 2 - CheckSumming Writer passes the line as it is to the TimeStampingWriter
# 3 - TimeStampingWriter receives the line and adds a Timestamp to it then passes it to NumberingWriter
# 4 - Numbering Writer receives the Time stamped line and adds a number to it then passes it to SimpleWriter
# 5 - SimpleWriter prints the received line (Number + TimeStamp + original line) to file.
writer = CheckSummingWriter.new(TimeStampingWriter.new(NumberingWriter.new(SimpleWriter.new('final.txt'))))
writer.write_line('Hello out there')
writer.close
puts("checksum: #{writer.check_sum}")
