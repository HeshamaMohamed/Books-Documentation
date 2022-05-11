class Array
  def my_each
    c = 0
    until c == size
      yield self[c]
      c += 1
    end
    self
  end
end

class Integer
  def my_times
    (0...self).to_a.my_each do |c|
      yield c
    end
    self
  end
end

ret = 5.my_times { |i| puts "I'm on iteration #{i}!" }
puts ret
