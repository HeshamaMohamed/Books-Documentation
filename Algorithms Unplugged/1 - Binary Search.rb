# require 'byebug'

def binary_search_iterative(array, key, left, right)
  #  debugger 
  while left <= right do 
    middle = (left + right) / 2
    if array[middle] == key
      return middle
    elsif array[middle] > key
      right = middle - 1
    elsif array[middle] < key
      left = middle + 1
    end
  end
  
    return nil
end


def binary_search_recursive(array, key, left, right)
  # debugger  
  return nil if left > right

  middle = (left + right) / 2

  if array[middle] == key
    return middle
  elsif array[middle] > key
    return binary_search_recursive(array, key, left, middle - 1)
  elsif array[middle] < key
    return binary_search_recursive(array, key, middle + 1, right)
  end

end

array = [10, 20,  30, 50, 60, 80, 100,  110, 130, 170]

p binary_search_iterative(array, 100, 0, array.size-1) 

p binary_search_recursive(array, 100, 0, array.size-1) 
