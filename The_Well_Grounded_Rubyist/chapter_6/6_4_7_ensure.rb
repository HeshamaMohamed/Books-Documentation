def line_from_file(filename, substring)
  fh = File.open(filename)
  begin
    line = fh.gets
    raise ArgumentError unless line.unclude?(substring)
  rescue ArgumentError
    puts 'Invalid line!'
    raise
  ensure
    fh.close
  end
  return line
end
