(1..FLoat::INFINITY).select { |n| n % 3 == 0 }.first(10) 
# this code runs forever. it needs to finish iterating which won't happen to give you first 10.

(1..Float::INFINITY).lazy
# #<Enumerator::Lazy: 1..Infinity>

(1..Float::INFINITY).lazy.select { |n| n % 3 == 0 }
# #<Enumerator::Lazy: #<Enumerator::Lazy: 1..Infinity>:select>

(1..Float::INFINITY).lazy.select { |n| n % 3 == 0 }.first(10) # this runs as much as needed to produce only the first 10
# [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]


my_enum = (1..Float::INFINITY).lazy.select { |n| n % 3 == 0 }
# #<Enumerator::Lazy: #<Enumerator::Lazy: 1..Infinity>:select>
my_enum.take(5).force
# [3, 6, 9, 12, 15]
my_enum.take(10).force
# [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]


def fb_calc(i)
  case 0
  when i % 15
    'FizzBuzz'
  when i % 3
    'Fizz'
  when i % 5
    'Buzz'
  else
    i.to_s
  end
end

def fb(n)
  (1..Float::INFINITY).lazy.map { |i| fb_calc(i) }.first(n)
end

p fb(15)
# ['1', '2', 'Fizz', '4', 'Buzz', 'Fizz', '7', '8', 'Fizz', 'Buzz', '11', 'Fizz', '13', '14', 'FizzBuzz']
