[1, 2, 3, 4].first # returns the first element of the enumerable.
# 1
(1..10).first
# 1
{1 => 2, "one two" => "three"}.first
# [1, 2]

address = { city: 'New York', state: 'NY', zip: '10027' }
address.first
# [:city, 'New York']
address[:zip] = '100018'
# 10018
address.first
# [:city, 'New York']

class Die
  include Enumerable
  def each
    loop do
      yield rand(6) + 1
    end
  end
end

puts "Welcome to 'You Win If You Roll a 6'!"
d = Die.new
d.each do |roll|
  puts "You rolled a #{roll}."
  if roll == 6
    puts 'You win!'
    break
  end
end

states = %w(NJ NY CT MA VT FL)

states.take(2) # it returns the 2 taken elements.
# ['NJ', 'NY']
states.drop(2) # it returns the rest of the array after dropping the 2 elements.
# ['CT', 'MA', 'VT', 'FL']

states.take_while { |s| /N/.match(s) }
# ['NJ', 'NY']
states.drop_while { |s| /N/.match(s) }
# ['CT', 'MA', 'VT', 'FL']

states.unshift('NE')
# ['NE', 'NJ', 'NY', 'CT', 'MA', 'VT', 'FL']
states.take(2) { |s| /N/.match(s) }
# ['NE', 'NJ']

# The #min and #max are determined by the <=> operator.
[1, 3, 5, 4, 2].max
# 5
%w(Ruby C APL Perl Smalltalk).min
# 'APL'
# perform a #min, #max based on nondefault criteria.
%w(Ruby C APL Perl Smalltalk).min { |a, b| a.size <=> b.size }
# 'C'
%w(Ruby C APL Perl Smalltalk).min_by { |lang| lang.size} # determine a specific minimum attribute
# 'C'
%w(Ruby C APL Perl Smalltalk).minmax # gets min and max
# ['APL', 'Smalltalk']
%w(Ruby C APL Perl Smalltalk).minmax_by { |lang| lang.size }
# ['C', 'Smalltalk']

die = Die.new
puts die.max

state_hash = {'New York' => 'NY', 'Maine' => 'ME', 'Alaska' => 'AK', 'Alabama' => 'AL' }
state_hash.min # hashes#min uses keys to determine ordering.
# ['Alabama', 'AL']
state_hash.min_by { |name, abbr| name } # if you want to use keys or values to determine ordering
# ['Alabama', 'AL']
state_hash.min_by { |name, abbr| abbr }
# ['Alaska', 'AK']
