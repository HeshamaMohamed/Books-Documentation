class Silly
  def price=(x)
    puts "The current time is #{Time.now}"
  end
end

s = Silly.new
s.price = 111.22

class Ticket
  def price=(amount)
    if (amount * 100).to_i == amount * 100
      @price = amountelse
      puts 'The price seems to be malformed'
    end
  end

  def price
    @price
  end
end

class TravelAgentSession
  def year=(year)
    if @year < 100
      @year = @year + 2000
    end
  end
end
