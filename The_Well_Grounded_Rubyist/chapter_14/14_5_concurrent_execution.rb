t = Thread.new do
  puts 'Starting the thread'
  sleep 1
  puts 'At the end of the thread'
end
puts 'Outside the thread'
t.join # now program waits for this thread to finish execution

puts 'Trying to read in some files...'
t = Thread.new do
  (0..2).each do |n|
    begin
      File.open("part0#{n}") do |f|
        text << f.readlines
      end
    rescue Errno::ENOENT
      puts "Message from
      thread: Failed on n=#{n}"
      Thread.exit # terminates thread.
    end
  end
end
t.join
puts 'Finished!'


t = Thread.new do 
  puts "[Starting thread]"
  Thread.stop
  puts "[Resuming thread]"
end
sleep 1
puts "Status of thread: #{t.status}"
# Status of thread: sleep
puts "Is thread stopped? #{t.stop?}"
# Is thread stopped? true
puts "Is thread alive? #{t.alive?}"
# Is thread alive? true
puts
puts "Waking up thread and joining it..."
t.wakeup
t.join # Resuming thread
puts
puts "Is thread alive? #{t.alive?}"
# Is thread alive? false
puts "Inspect string for thread: #{t.inspect}"
# Inspect string for thread: #<Thread:0x00007fffd7b6a0d8@14_5_concurrent_execution.rb:27 dead>


f = Fiber.new do
  puts 'Hi.'
  Fiber.yield
  puts 'Nice day.'
  Fiber.yield
  puts 'Bye!'
end
f.resume
# Hi.
puts 'Back to the fiber:'
# Back to the fiber:
f.resume
# Nice day.
puts 'One last message from the fiber:'
# One last message from the fiber:
f.resume
# Bye!
puts "That's all!"
# That's all!


a = 1
Thread.new { a = 2 }
p a
# 2

t = Thread.new { Thread.stop; a = 3 }
p a
# 2
t.run
p a
# 3

p $/
# '\n'
$var = 1
Thread.new { $var = 2; $/ = "\n\n" }
p $/
# "\n\n"
p $var
# 2
$/ = '\n'

### thread-local globals ($n global variables)
/(abc)/.match('abc')
t = Thread.new do
  /(def)/.match('def')
  puts "$1 in thread: #{$1}"
end.join
# $1 in thread: def
puts "$1 outside thread: #{$1}"
# $1 outside thread: abc

### thread keys
t = Thread.new do
  Thread.current[:message] = 'Hello'
end
t.join
p t.keys
# [:message]
puts t[:message]
# Hello
p t.fetch(:message, 'Greetings!')
# Hello
p t.fetch(:msg, 'Greetings!')
# Greetings!
t.fetch(:msg) # because we've provided no default value and msg is non-existent key, we get an error.
# KeyError (key not found: :msg)
