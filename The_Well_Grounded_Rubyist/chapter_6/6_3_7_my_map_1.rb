class Array
  def my_map
    c = 0
    acc = []
    until c == size
      acc << yield(self[c])
      c += 1
    end
    acc
  end
end

names = ['David', 'Alan', 'Black']
p names.my_map { |name| name.upcase }
