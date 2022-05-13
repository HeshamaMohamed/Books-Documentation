require 'time'
t = Time.now
t - 20 # subtracts time by 20 seconds
t + 20 # add 20 seconds to time

dt = DateTime.now
# puts dt
# 2022-05-13T09:10:47+02:00
# puts dt + 100
# 2022-08-21T09:10:15+02:00
# puts dt >> 3
# 2022-08-13T09:10:47+02:00
# puts dt << 10
# 2021-07-13T09:10:47+02:00

d = Date.today
# puts d
# 2022-05-14
# puts d.next
# 2022-05-14
# puts d.next_year
# 2022-08-13
# puts d.next_month(3)
# 2022-05-03
# puts d.prev_day(10)

puts d = Date.today
# 2022-05-13
puts next_week = d + 7
# 2022-05-20
d.upto(next_week) { |date| puts "#{date} is a #{date.strftime('%A')}" }
# 2022-05-13 is a Friday
# 2022-05-14 is a Saturday
# 2022-05-15 is a Sunday
# 2022-05-16 is a Monday
# 2022-05-17 is a Tuesday
# 2022-05-18 is a Wednesday
# 2022-05-19 is a Thursday
# 2022-05-20 is a Friday
