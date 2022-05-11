class Ticket
  attr_accessor :name, :venue, :date

  def initialize(name, venue, date)
    self.name = name
    self.venue = venue
    self.date = date
  end

  def ===(other_ticket)
    self.date == other_ticket.date
  end
end

class TicketComparer
  def self.compare(*tickets)
    first_ticket = tickets.shift

    puts  case first_ticket
          when *tickets
            "Same date as #{first_ticket.name}"
          end
  end
end

ticket1 = Ticket.new('ticket1', 'Town Hall', '07/08/18')
ticket2 = Ticket.new('ticket2', 'Converence Center', '07/08/18')
ticket3 = Ticket.new('ticket3', 'Town Hall', '08/09/18')

puts "#{ticket1.name} is for an event on #{ticket1.date}"
TicketComparer.compare(ticket1, ticket2, ticket3)
