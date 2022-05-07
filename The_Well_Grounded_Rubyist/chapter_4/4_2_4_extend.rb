module Convertible
  def c2f(celsius)
    celsius * 9.0 / 5 + 32
  end

  def f2c(fahrenheight)
    (fahrenheight - 32) * 5 / 9.0
  end
end

class Thermometer
  extend Convertible
end

# There was a typo in the book. he called these functions on the Temperature class.
# but he extended the Convertible module on Thermometer class, so I adjusted it.
puts Thermometer.c2f(100)
puts Thermometer.f2c(212)
