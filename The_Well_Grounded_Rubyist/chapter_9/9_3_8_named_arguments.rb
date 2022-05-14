def m(a:, b:)
  p a, b
end
m(a: 1, b: 2)
# [1, 2]

m
# ArgumentError: missing keywords: a, b
m(a: 1)
# ArgumentError: missing keywords: b


def m(a: 1, b: 2)
  p a, b
end

m
# [1, 2]
m(a: 10)
# [10, 2]

def m(a: 1, b: 2, **c)
  p a, b, c
end
m(1, 2, 3, 4, 5, b:10, p:20, q:30)
# [1, 2, [3, 4, 5], 1, 10, {:p => 20, :q=>30}]
