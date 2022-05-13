t = Time.now
# => 2018-12-15 19:10:10 -500
t.strftime("%m-%d-%y") # reformats to the specified format.
# "12-15-18"

t.strftime('Today is %x')

t.strftime("Otherwise known as ")
