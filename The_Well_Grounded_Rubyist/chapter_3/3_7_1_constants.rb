class Ticket
  VENUES = ['Convention Center', 'Fairgrounds', 'Town Hall']

  def initialize(venue, date)
    if VENUES.include?(venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
  end
end

puts "We've closed the class definition."
puts 'So we have to use the path notation to reach the constant.'
puts 'The venues are:'
puts Ticket::VENUES

A = [1]
A = [2] # => warning, we can't reassign a constant.
A << 2 # => this is fine because we are not reassigning the constant to another object, we are mutating the same object it is referring to.
# => [1, 2]
