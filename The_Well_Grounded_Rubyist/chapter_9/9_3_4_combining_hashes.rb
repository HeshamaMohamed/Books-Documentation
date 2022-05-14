h1 = {  first: 'Joe',
        last: 'Leo',
        suffix: 'III' }

h2 = { suffix: 'Jr.' }

h3 = h1.merge(h2) # add '!' for inplace merge
puts h3[:suffix]
# { first: 'Joe', last: 'Leo', suffix: 'Jr.' }

h1.update(h2) # inplace combining, same as merge!
puts h1[:suffix]
# 'Jr.'
