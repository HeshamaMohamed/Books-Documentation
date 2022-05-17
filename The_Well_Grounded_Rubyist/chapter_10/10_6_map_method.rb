names = %w(David Yukihiro Chad Amy)
# ['David', 'Yukihiro', 'Chad', 'Amy']
names.map {|name| name.upcase }
# ['DAVID', 'YUKIHIRO', 'CHAD', 'AMY']
names.map(&:upcase) # same functionality as the above.
# ['DAVID', 'YUKIHIRO', 'CHAD', 'AMY']

result = array.each { |x| "code here" }

result = array
array.each { |x| "..." }

result = array.map { |x| "code here" }

array = [1, 2, 3, 4, 5]
result = array.map { |n| puts n * 100 } # puts returns nil. it will output on the screen, but result will get nils back.
# [nil, nil, nil, nil, nil]

names = %w(David Yukihiro Chad Amy)
names.map!(&:upcase) # inplace mapping.
