class Rainbow
  include Enumerable
  def each
    yield 'red'
    yield 'orange'
    yield 'yellow'
    yield 'green'
    yield 'blue'
    yield 'indigo'
    yield 'violet'
  end
end

r = Rainbow.new
r.each do |color|
  puts "Next color: #{color}"
end

y_color = r.find { |color| color.start_with?('y') }
puts "First color starting with 'y' is #{y_color}"

Enumerable.instance_methods(false).sort
