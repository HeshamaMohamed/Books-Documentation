class Bid
  include Comparable
  attr_accessor :estimate

  def <=>(other_bid)
    if self.estimate < other_bid.estimate
      -1
    elsif self.estimate > other_bid.estimate
      1
    else
      0
    end
  end
  # the above method is equivelant to this in case of Integer and float comparison.
  def <=>(other_bid)
    self.estimate <=> other_bid.estimate
  end
end
