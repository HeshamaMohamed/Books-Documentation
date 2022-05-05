class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def venue
    @venue
  end

  def date
    @date
  end
end

th = Ticket.new('Town Hall', '2013-11-12')
cc = Ticket.new('Convention Center', '2014-12-13')
puts "We've created two tickets."
puts "The first is for a #{th.venue} even on #{th.date}."
puts "The second is for an event on #{cc.date} at #{cc.venue}."