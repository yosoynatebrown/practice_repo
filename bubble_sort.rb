def bubble_sort(array)
(array.count - 1).times do
index = 0
array.each { |num|
  unless array[index + 1] == nil
    if num > array[index + 1]
      array[index], array[index + 1] = array[index + 1], array[index]
    end
  end
  index += 1
}

end
array
end




bubble_sort([4,3,78,2,0,2])
