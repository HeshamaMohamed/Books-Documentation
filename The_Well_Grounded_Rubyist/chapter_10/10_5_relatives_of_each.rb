[1, 2, 3].reverse_each {|e| puts e * 10 }
# 30
# 20
# 10

names = ['George Washington', 'John Adams', 'Thomas Jefferson', 'James Madison']
names.each_with_index do |pres, i|
  puts "#{i+1}. #{pres}"
end
# '1. George Washington'
# '2. John Adams'
# '3. Thomas Jefferson'
# '4. James Madison'

%w(a b c).each_index { |i| puts i }
# 0
# 1
# 2

letters = { 'a' => 'ay', 'b' => 'bee', 'c' => 'see' }

letters.each_with_index { |(key, value), i| puts i } 
# 0
# 1
# 2

letters.each_index { |(key, value), i| puts i }
# NoMethodError (undefined method 'each_index' for {'a'=>'ay', 'b'=>'bee', 'c'=>'see'}:Hash)

array = %w{ red yellow blue}
# each_with_index is somewhat deprecated. Instead, consider using the #with_index for the enumerator you're getting back from calling each.
array.each.with_index do |color, i|
  puts "Color number #{i} is #{color}."
end

names.each.with_index(1) do |pres, i| # adding 1 as argument to #with_index makes it start from index 1 rather than 0
  puts "#{i} is #{pres}."
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
array.each_slice(3) { |slice| p slice }
# [1, 2, 3]
# [4, 5 ,6]
# [7, 8, 9]
# [10]
array.each_cons(3) { |cons| p cons }
# [1, 2, 3]
# [2, 3 ,4]
# [3, 4, 5]
# [4, 5, 6]
# [5, 6, 7]
# [6, 7, 8]
# [7, 8, 9]
# [8, 9, 10]

parsed_report = ['Top Secret Report', 'Eyes Only', '=====', 'Title: The Meaning of Life']
parsed_report.slice_before(/=/).to_a
# [['Top Secret Report', 'Eyes Only'], ['=====', 'Title: The Meaning of Life']]
parsed_report = ['Top Secret Report', 'Eyes Only', '=====', 'Title: The Meaning of Life', 'Author: [REDACTED]', 'Date: 2018-01-01', '=====', 'Abstract:\n']
parsed_report.slice_after(/=/).to_a
(1..10).slice_before { |num| num % 2 == 0 }.to_a
# [[1], [2,3], [4,5], [6,7], [8,9], [10]]

File.open('report.dat').slice_before do |line|
  line.start_with?('=')
end.to_a

[1,2,3,3,4,5,6,6,7,8,8,8,9,10].slice_when { |i, j| i == j }.to_a
# [[1,2,3], [3,4,5,6], [6,7,8], [8], [8,9,10]]

class PlayingCard
  SUITS = %w(clubs diamonds hearts spades)
  RANKS %w(2 3 4 5 6 7 8 9 10 J Q K A)
  class Deck
    attr_reader :cards
    def initialize(n = 1)
      @cards = []
      SUITS.cycle(n) do |s|
        RANKS.cycle(1) do |r|
          @cards << "#{r} of #{s}"
        end
      end
    end
  end
end

deck = PlayingCard::Deck.new(2)
puts deck.cards.size
# 104

[1, 2, 3, 4].inject(0) { |acc, n| acc + n } # calling .inject() without passing arguments, acc initializes from 1st element in array, while n initializes from 2nd element.
# 10
[1, 2, 3, 4].inject(:+) # same functionality as the above.
# 10
[1, 2, 3, 4].inject do |acc, n|
  puts "Adding #{acc} and #{n}...#{acc+n}"
  acc + n
end
# Adding 1 and 2...3
# Adding 3 and 3...6
# Adding 6 and 4...10
