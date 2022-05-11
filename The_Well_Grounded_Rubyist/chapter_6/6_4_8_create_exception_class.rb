class MyNewException < Exception
end

begin
  puts 'About to raise exception...'
  raise MyNewException
rescue MyNewException => e
  puts "Just raised an exception: #{e}"
end
