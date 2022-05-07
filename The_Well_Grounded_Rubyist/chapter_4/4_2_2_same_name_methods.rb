module  InterestBearing
  def calculate_interest
    puts "Placeholder! We're in module InterestBearing."
  end
end

class BankAccount
  include InterestBearing
  def calculate_interest
    puts "Placeholder! We're in class BankAccount."
    puts "And we're overriding the calculate_interest method..."
    puts 'which was defined in the Interest Bearing module.'
  end
end
account = BankAccount.new
account.calculate_interest

module M
  def report
    puts "'report method in module M"
  end
end

module N
  def report
    puts "'report method in module N"
  end
end

class C
  include M
  include N
end

c = C.new
c.report # => reported from module N because it was the most recent included module.