class Symbol
  def to_proc
    puts 'In the new Symbol#to_proc!'
    Proc.new { |obj| obj.public_send(self) }
  end
end

# irb --simple-prompt -I. -r 14_1_4_sym2proc
%w[david black].map(&:capitalize)
# In the new Symbol#to_proc!
# ["David", "Black"]
