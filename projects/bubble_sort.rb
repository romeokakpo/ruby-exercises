def bubble_sort(array)
  for i in 0...array.size
    for j in 0...(array.size - i - 1)
        array[j], array[j+1] = array[j+1], array[j] if array[j+1] < array[j]
    end
  end
  array
end

p bubble_sort([0,2,2,3,4,78])