d = Dir.new("../chapter_12/")
p d.entries
# [".", "..", "12_1_3_outputs.rb", "12_1_3_record.txt", "12_1_IO_System.rb", "12_2_1_ticket2.rb", "12_2_7_data.out", "12_2_7_read_records.rb", "12_2_7_records.txt", "12_2_8_exercises.rb", "12_2_8_hits.txt", "12_2_basic_file_operations.rb", "12_3_Querying_IO.rb", "12_4_Directory_manipulation.rb", "3_2_Ticket.rb", "data.out"]
Dir.entries("../chapter_12/")
# [".", "..", "12_1_3_outputs.rb", "12_1_3_record.txt", "12_1_IO_System.rb", "12_2_1_ticket2.rb", "12_2_7_data.out", "12_2_7_read_records.rb", "12_2_7_records.txt", "12_2_8_exercises.rb", "12_2_8_hits.txt", "12_2_basic_file_operations.rb", "12_3_Querying_IO.rb", "12_4_Directory_manipulation.rb", "3_2_Ticket.rb", "data.out"]

d = Dir.new("../chapter_12/")
entries = d.entries
entries.delete_if { |entry| entry =~ /^\./ } # remove all entries that begin with a dot.
entries.map! { |entry| File.join(d.path, entry) } # make each entry include the full path of the file.
entries.delete_if { |entry| !File.file?(entry) } # delete if its not a file.
print 'Total bytes: '
puts entries.inject(0) { |total, entry| total + File.size(entry) }

# $ ls *.rb
# $ rm *.?xt
# for f in [A-Z]*  # etc.
p Dir['../chapter_12/*.rb']
# ["../chapter_12/12_1_3_outputs.rb", "../chapter_12/12_1_IO_System.rb", "../chapter_12/12_2_1_ticket2.rb", "../chapter_12/12_2_7_read_records.rb", "../chapter_12/12_2_8_exercises.rb", "../chapter_12/12_2_basic_file_operations.rb", "../chapter_12/12_3_Querying_IO.rb", "../chapter_12/12_4_Directory_manipulation.rb", "../chapter_12/3_2_Ticket.rb"]
p Dir.glob('info*')
p Dir.glob('info', File::FNM_CASEFOLD) # the second argument makes glob case-insensitive.

p Dir.glob('*info*')
p Dir.glob('info', File::FNM_DOTMATCH) # the second argument makes glob include hidden dot files.

p Dir.glob('*info*', File::FNM_DOTMATCH | File::FNM_CASEFOLD)

p Dir['*info*'] # equivelant to Dir.glob('*info*')

dir = '../chapter_12'
entries = Dir["#{dir}/*"].select { |entry| File.file?(entry) }
print 'Total bytes: '
puts entries.inject(0) { |total, entry| total + File.size(entry) }


