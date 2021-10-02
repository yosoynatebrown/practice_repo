def spiralize(size)
array = Array.new(size) { Array.new(size,0) }

array.each do |arr|
  arr[-1] = 1
end
array[0].map! do |element|
  element = 1
end
array[-1].map! do |element|
  element = 1
end
array.each_with_index do |arr, index|
  unless index == 1
    arr[0] = 1
  end
end
array[2].map! do |element, index|
  element = 1
end
array[2][-2] = 0

array.map!.with_index do |arr, index|
  
end
end

spiralize(5)
