require 'date'
require 'time'

Date.parse('April 24 1705').england.strftime('"%B %d %Y')

puts Date.today
puts Date.new(1959,2,1) # if not provided, year defaults to 4712 and day,month to 1

puts Date.parse('2003/6/9') # parse differs from Date.new that it takes a string. it expects y/m/d order.

puts Date.parse('03/6/9') # year is below 69, it added 2000
# 2003-06-09
puts Date.parse('33/6/9')
# 2033-06-09
puts Date.parse('77/6/9') # year is above 69, it added 1900
# 1977-06-09

puts Date.parse('November 2 2013')
# 2013-11-02
puts Date.parse('Nov 2 2013')
# 2013-11-02
puts Date.parse('2 Nov 2013')
# 2013-11-02
puts Date.parse('2013/11/2')
# 2013-11-02

Time.new
# current date, time
Time.at(100000000) # time after 100000000 seconds starting after midnight Jan 1, 1970 GMT
# 1973-03-03 04:46:40 -500
Time.mktime(2007,10,3,14,3,6) # expects y, m, d, h, m ,s order
# 2007-10-03 14:03:06 -400
Time.parse('March 22, 1985, 10:35 PM')
# 1985-03-22 22:35:00 -0500

puts DateTime.new(2009, 1, 2, 3, 4, 5)
# 2009-01-02T03:04:05+00:00
puts DateTime.now
# current.
puts DateTime.parse('October 23, 1973, 10:34 AM')
# 1973-10-23T10:34:00+00:00


