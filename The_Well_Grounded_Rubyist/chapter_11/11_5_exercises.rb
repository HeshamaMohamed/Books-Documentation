### Exercise 1

string = File.read('collections.txt')

# m = /.+\s+(^\S+).+\s+(^\S+).+\s+(^\S+).+\s+/.match(string)
# p m.captures


### Exercise 2

m = string.scan(/\d+/m)
# p m.map(&:to_i)

## Exercise 3

# I can't think of a solution.
