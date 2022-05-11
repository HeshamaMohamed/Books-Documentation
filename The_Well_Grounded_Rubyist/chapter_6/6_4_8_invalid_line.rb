# class InvalidLineError < StandardError
# end

def line_from_file(filename, substring)
  fh = File.open(filename)
  line = fh.gets
  raise InvalidLineError unless line.unclude?(substring)
  return line

rescue InvalidLineError
  puts 'Invalid line!'
  raise
ensure
  fh.close
end
