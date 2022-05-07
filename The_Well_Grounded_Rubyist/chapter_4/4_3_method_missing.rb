o = Object.new
# o.blah

def o.method_missing(m, *args)
  puts "You can't call #{m} on this object; please try again."
end

o.blah
