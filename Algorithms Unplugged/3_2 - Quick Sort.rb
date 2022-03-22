# require 'byebug'

def quick_sort(array, first, last)
  if first < last # haven't reached the last of the array
    pivot_idx = partition(array, first, last) # re-organize the array so that all elements smaller than pivot are on the left and those bigger are on the right and the pivot is in-between
    quick_sort(array, first, pivot_idx - 1) # re-apply on left side of the pivot (smaller than pivot)
    quick_sort(array, pivot_idx + 1, last) # re-apply on right side (bigger than pivot)
  end
  array
end

def partition(array, first, last)
  # debugger
  pivot = array[last] # picking last element as pivot
  pivot_idx = first 
  i = first

  while i < last
    if array[i] <= pivot
      array[i], array[pivot_idx] = array[pivot_idx], array[i]
      pivot_idx += 1
    end
    i += 1
  end

  array[pivot_idx], array[last] = array[last], array[pivot_idx]

  pivot_idx
end

array = [3, 4, 1, 5, 7, 1, 4]
p quick_sort(array, 0, array.size-1)