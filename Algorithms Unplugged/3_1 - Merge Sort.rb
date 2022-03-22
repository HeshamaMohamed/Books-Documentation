# require 'byebug'

def merge(array_1, array_2)
  # debugger
  merged_array = []
  (0..array_1.size + array_2.size - 1).each do
    if array_1.empty?
      merged_array << array_2.shift
    elsif array_2.empty?
      merged_array << array_1.shift
    else
      merged_array << (array_1.first >= array_2.first ? array_2.shift : array_1.shift)
    end
  end
  merged_array
end

def merge_sort(array)
  # debugger
  return array if array.size == 1
  middle = (array.size - 1) / 2
  left_half = array[0..middle]
  right_half = array[middle + 1...array.size]
  sorted_left_half = merge_sort(left_half)
  sorted_right_half = merge_sort(right_half)
  merge(sorted_left_half, sorted_right_half)
end

unsorted_array = [4, 2, 1, 3,7,5,9,30,70,50]

p merge_sort(unsorted_array)