class C
  def self.const_missing(const)
    puts "#{const} is undefined-setting it to 1."
    const_set(const, 1) # setting a constant with a value of '1'
  end
end

puts C::A
puts C::A
