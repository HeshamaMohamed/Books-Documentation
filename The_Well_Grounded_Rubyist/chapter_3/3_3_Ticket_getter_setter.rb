class Ticket
  attr_accessor :price
  attr_reader :venue, :date

  def initialize(venue, date)
    @venue = venue 
    @date = date
  end
end
