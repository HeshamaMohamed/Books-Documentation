def add_to_city_database(name, info)
  c = City.new
  c.name = name
  c.state = info[:state]
  c.population = info[:population]
  c.nickname = info[:nick_name]
end

add_to_city_database( # first argument is the name, second and last argument is a hash containing city info
  'New York City',
  state: 'New York',
  population: 7000000,
  nickname: 'Big Apple'
)

my_method { NY: 'New York'}, 100, 'another argument' # ruby interprets the first hash as a block
my_method({ NY: 'New York'}, 100, 'another argument') # this is correct.