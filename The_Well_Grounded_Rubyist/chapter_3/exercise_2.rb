class Ticket
  def initialize(venue)
    @venue = venue
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

  def valid_date?(date)
    year, month, day = date.split('-')
    year.length == 4 && month.length == 2 && day.length == 2
  end

  def date=(date)
    if valid_date?(date)
    @date = date 
    puts @date
    else
      puts 'Please submit the date in the format "yyyy-mm-dd"'
    end
  end
end

ticket = Ticket.new('Town Hall')
#, '2013-11-12')
ticket.date = '2013-11-12'
ticket.date = '13-11-12'
