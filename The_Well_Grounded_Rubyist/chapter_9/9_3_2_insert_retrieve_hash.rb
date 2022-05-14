state_hash ={ "Connecticut" => "CT",
              "Delaware" => "DE",
              "New Jersey" => "NJ",
              "Virginia" => "VA"
            }

state_hash['New York'] = 'NY'
# {'New York' => 'NY'}
state_hash.store('New York', 'NY')
# {'New York' => 'NY'}

h = Hash.new
h['a'] = 1
p h
# {'a' => 1}
h['a'] = 2
p h
# {'a' => 2}

p state_hash['New York'] # gives nil or default value if key doesn't exist.
# 'NY'
p state_hash.fetch('New York') # raise exception if key doesn't exist
# 'NY'
p state_hash.fetch('New York', 'Unknown') # returns 'Unknown' if key doesn't exist
# 'NY'
two_states = state_hash.values_at('New Jersey', 'Delaware') 
# ['NJ', 'DE']
state_hash.fetch_values('New Jersey', 'Wyoming') # raises KeyError if any key doesn't exist
# KeyError (key not found: 'Wyoming')

state_hash.fetch_values('New Jerset', 'WYOMING') do |key| 
  key.capitalize # instead of giving error for WYOMING, it'll insert its evaluated value to the resulting array 'Wyoming'
end
# ['NJ', 'Wyoming']

contacts =
 {john: {
    phone: '555-1234',
    email: 'john@example.com'
        },
  eric: {
    phone: '555-1235',
    email: 'eric@example.com'
        }}

p contacts.dig(:eric, :email)
# 'eric@example.com'


