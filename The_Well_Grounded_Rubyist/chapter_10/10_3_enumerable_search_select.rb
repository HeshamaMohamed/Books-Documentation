[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].find { |n| n > 5 } # find locates the first element only
# 6

[1, 2, 3, nil, 4, 5, 6].find { |n| n.nil? } # this is useless as it will always return nil. because find returns nil if the condition isn't met.

failure = lambda { 'Nothing Found' }
over_ten = [1, 2, 3, 4, 5, 6].find(failure) { |n| n > 10 } # here we provided a proc to call if the find function fails.

r = Rainbow.new
r.select { |color| color.size == 6 }
# ['orange', 'yellow', 'indigo', 'violet']
r.map {|color| color[0, 3] }
# ['red', 'ora', 'yel', 'gre', 'blu', 'ind', 'vio']
r.drop_while { |color| color.size < 5 }
# ['orange', 'yellow', 'green', 'blue', 'indigo', 'violet']

a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
a.find_all { |item| item > 5 }
# [6, 7, 8, 9, 10]
a.select { |item| item > 100 } # returns empty array if nothing found.
# []

a.reject { |item| item > 5 }
colors = %w(red orange yellow green blue indigo violet)
colors.grep(/o/) # grep is based on case-equality operator '==='. It selects based on truth value coming from that operation.
# ['orange', 'yellow', 'indigo', 'violet']

miscellany = [75, 'hello', 10...20, 'goodbye']
miscellany.grep(String)
# ['hello', 'goodbye']
miscellany.grep(50..100)
# [75]

enumerable.grep(expression)
# the previous line is functionally equivalent to the following line.
enumerable.select { |element| expression === element} 

colors = %w(red orange yellow green blue indigo violet)
colors.grep(/o/) { |color| color.capitalize }

enumerable.grep(expression) { |item|  ... }

enumerable.select { |item| expression === item}.map { |item| ... }

colors.group_by {|color| color.size }
# { 3 => ['red'], 6=> ['orange', 'yellow', 'indigo', 'violet'], 5 => ['green'], 4 => ['blue']}

class Person 
  attr_accessor :age
  def initialize(options)
    self.age = options[:age]
  end
  def teenager?
    (13..19) === age
  end
end

people = 10.step(25, 3).map { |i| Person.new(:age => i) }

teens = people.partition { |person| person.teenager? } # split the teens array into 2 sub-arrays, first subarray contains teens where teen.teenager? == true, the second subarray contains false teen.teenager?.

puts "#{teens[0].size} teens; #{teens[1].size} non-teens"
# 3 teens; 3 on-teens
