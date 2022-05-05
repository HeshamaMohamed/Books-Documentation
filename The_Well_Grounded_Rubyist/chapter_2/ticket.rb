ticket = Object.new

def ticket.date
  '1903-01-02'
end

def ticket.venue
  'Town Hall'
end

def ticket.event
  "Author's reading"
end

def ticket.performer
  'Mark Twain'
end

def ticket.seat
  'Second Balcony, row J, seat 12'
end

def ticket.price
  5.50
end

def ticket.availability_status
  'sold'
end

def ticket.available?
  false
end

def ticket.print_details(*x)
  x.each { |detail| puts "This ticket is #{detail}" }
end

puts "This ticket is for: #{ticket.event}, at #{ticket.venue}.\n" +
"The performer is #{ticket.performer}.\n" +
"The seat is #{ticket.seat}, " +
"And it costs $#{'%.2f.' % ticket.price}"

ticket.print_details('non-refundable.', 'non-transferable.', 'in a non smoking section.')
