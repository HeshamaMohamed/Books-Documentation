p File.size('12_2_8_hits.txt')
# 299
p FileTest.size('12_2_8_hits.txt')
# 299
p File::Stat.new('12_2_8_hits.txt').size
# 299

p FileTest.exist?('12_2_8_hits.txt')
# true
p FileTest.empty?('12_2_8_hits.txt')
# false
p FileTest.directory?('12_2_8_hits.txt')
# false
p FileTest.file?('12_2_8_hits.txt')
# true
p FileTest.symlink?('12_2_8_hits.txt')
# false
# This family of query methods also includes blockdev?, pipe?, chardev?, and socket?.

p FileTest.readable?('12_2_8_hits.txt')
# true
p FileTest.writable?('12_2_8_hits.txt')
# true
p FileTest.executable?('12_2_8_hits.txt')
# true
# This family of query methods includes world_readable? and world_writable?.

p FileTest.size('12_2_8_hits.txt')
# 299
p FileTest.zero?('12_2_8_hits.txt')
# false

test(?e, '/tmp') # tests whether /tmp exists.
test(?d, '/tmp') # tests whether /tmp is a directory.
test(?f, '/tmp') # tests whether /tmp is a regular file.
test(?z, '/tmp') # tests whether /tmp is a zero-length file.

puts File::Stat.new('12_2_8_hits.txt')
# #<File::Stat dev=0xe, ino=19984723346798097, mode=0100777, nlink=1, uid=1000, gid=1000, rdev=0x0, size=299, blksize=512, blocks=0, atime=2022-05-18 13:38:14 +0200, mtime=2022-05-18 08:38:30 +0200, ctime=2022-05-18 08:38:30 +0200>
File.open('12_2_8_hits.txt') { |f| f.stat } # same as above
