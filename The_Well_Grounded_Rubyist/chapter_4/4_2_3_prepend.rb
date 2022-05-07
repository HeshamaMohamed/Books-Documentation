module MeFirst
  def report
    puts 'Hello from module!'
  end
end

class Person
  prepend MeFirst
  def report
    puts 'Hello from class!'
  end
end

p = Person.new
p.report
