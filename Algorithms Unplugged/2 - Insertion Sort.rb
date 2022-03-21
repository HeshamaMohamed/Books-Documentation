require 'byebug'

def subsequent_sort(array)
  # debugger
  (1...array.size).each do |i|
    j = i

    while j >= 1 && array[j - 1] > array[j] #haven't reached the beginning of the array && the element behind is bigger
      array[j], array[j-1] = array[j-1], array[j]  #swap with the element behind
      j -= 1 #iterate 1 step behind to check if there's still bigger elements behind so we could swap again
    end
  end

  return array
end

# this is another variation which is less expensive in terms of computation therefore, more efficient.
def insertion_sort(array)
  # debugger
  for i in (1...array.size)
    hand = array[i]
    j = i - 1

    while j > 0 && array[j] > hand # while haven't reached the beginning of the array && the element behind is bigger
      array[j + 1] = array[j] #shifts the smaller element 1 step behind
      j -= 1  
    end

    array[j+1] = hand #places the element in its right position after shifting all of the bigger elements behind it.
  end

  return array
end


array = [1, 6, 7, 9, 11, 5, 3, 8, 15, 10, 16, 9, 13, 2, 14, 12]

# p subsequent_sort(array)
p insertion_sort(array)

