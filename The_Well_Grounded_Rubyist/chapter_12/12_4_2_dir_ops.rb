newdir = '../chapter_12/test_dir'
newfile = 'newfile'
Dir.mkdir(newdir) # creates a new folder with the given name
print "Is #{newdir} empty?"
# Is ../chapter_12/test_dir empty?
puts Dir.empty?(newdir) # checks if the folder is empty
# true

Dir.chdir(newdir) do # chdir changes the current folder till the block is finished then returns to the previous folder.
  File.open(newfile, 'w') do |f|
    f.puts 'Sample file in new directory'
  end
  puts "Current directory: #{Dir.pwd}"
  puts 'Directory listing: '
  p Dir.entries('.')
  File.unlink(newfile) # deletes the file
end

Dir.rmdir(newdir) # delete folder
print "Does #{newdir} still exist? "

if File.exist?(newdir)
  puts 'Yes'
else
  puts 'No'
end
