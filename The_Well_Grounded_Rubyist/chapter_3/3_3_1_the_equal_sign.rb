class Ticket
  def initialize(venue,date)
    @venue = venue
    @date = date
  end

  def price=(price)
    @price = price
  end

  def price
    @price
  end

  def discount(percent)
    @price = @price * (100 - percent) / 100.00
  end
end

th = Ticket.new('Town Hall', '2013-11-12')
th.price = 63.00
puts "The ticket costs $#{'%.2f' % ticket.price}."
ticket.price(72.50)
puts "Whoops -- it just went up. It now costs $#{'%.2f' % ticket.price}."
