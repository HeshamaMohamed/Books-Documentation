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

  def venue
    @venue
  end

  def discount(percent)
    @price = @price * (100 - percent) / 100.00
  end
end

th = Ticket.new('Town Hall', '2013-11-12')
th.price = 100
puts "The ticket for #{th.venue} has been discounted 15% to #{'%.2f' % th.discount(15)}."
th.discount(15)
