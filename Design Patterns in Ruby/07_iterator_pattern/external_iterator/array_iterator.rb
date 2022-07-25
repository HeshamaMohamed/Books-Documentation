class ArrayIterator
  def initialize(array)
    # Make a deep copy the array so that changes to the original array
    # wont effect the iterator
    @array = array.clone
    @index = 0
  end

  def has_next?
    @index < @array.length
  end

  def next_item
    item = @array[@index]
    @index += 1
    item
  end
end
