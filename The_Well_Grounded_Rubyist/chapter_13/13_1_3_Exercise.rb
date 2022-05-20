module P
end

module M
end

class C
  include P
end

c = C.new

class << c
  include M
  p ancestors
end
