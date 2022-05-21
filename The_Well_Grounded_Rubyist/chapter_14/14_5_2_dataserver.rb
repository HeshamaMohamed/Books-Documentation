require 'socket'
s = TCPServer.new(3939)
while (conn = s.accept)
  Thread.new(conn) do |c|
    c.print "Hi. What's your name? "
    name = c.gets.chomp
    c.puts "Hi, #{name}. Here's the date."
    c.puts `date` # date in backticks executes the system date command.
    c.close
  end
end

