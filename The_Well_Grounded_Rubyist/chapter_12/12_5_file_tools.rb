require 'fileutils'
# true
FileUtils.cp('test_copy.rb', 'test_copy.rb.bak') # creates a copy of test_copy.rb
# nil
FileUtils.mkdir('backup') # creates a directory 'backup'
# ['backup']
FileUtils.cp(['test_copy.rb', 'test_copy.rb.bak'], 'backup') # copies test_copy.rb, test_copy.rb.bak to 'backup' folder
# ['test_copy.rb', 'test_copy.rb.bak']
p Dir['backup/*']
# ['backup/test_copy.rb', 'backup/test_copy.rb.bak']

FileUtils.cp('test_copy.rb', 'test_move.rb')
FileUtils.mv('test_move.rb', 'backup')
p Dir['backup/*']

File.exist?('backup/test_move.rb')
# true
FileUtils.rm('backup/test_move.rb')
# ['backup/test_move.rb']
File.exist?('backup/test_move.rb')
# false

FileUtils.rm_rf('backup')
File.exist?('backup')
# false

FileUtils::DryRun.rm_rf('backup')
# rm -rf backup
# nil
FileUtils::DryRun.ln_s('backup', 'backup_link')
# ln -s backup backup_link
# nil

FileUtils::NoWrite.rm('backup/test_copy.rb') # doesn't apply disk-writing operations.
# nil
File.exist?('backup/test_copy.rb')
# true

require 'pathname'
p path = Pathname.new('../chapter_12/test_copy.rb')
# #<Pathname:../chapter_12/test_copy.rb>
p path.basename
# #<Pathname:test_copy.rb>
puts path.basename
# test_copy.rb
p path.dirname
# #<Pathname:../chapter_12>
p path.extname # prints the path extension
# '.rb'
path.ascend do |dir|
  puts "Next level up: #{dir}"
end
# Next level up: ../chapter_12/test_copy.rb
# Next level up: ../chapter_12
# Next level up: ..

path.ascend do |dir|
  puts "Ascended to : #{dir.basename}"
end

module DeCommenter
  def self.decomment(infile, outfile, comment_re = /\A\s*#/)
    infile.each do |inline|
      outfile.print inline unless inline =~ comment_re # writes the line to outfile unless the line is a comment.
    end
  end
end

File.open('myprogram.rb') do |inf|
  File.open('myprogram.rb.out', 'w') do |outf|
    DeCommenter.decomment(inf, outf)
  end
end

require 'tempfile'
tf = Tempfile.new('my_temp_file') # creates a temporary file with that name

require 'open-uri'
rubypage = open('http://rubycentral.org')
puts rubypage.gets
