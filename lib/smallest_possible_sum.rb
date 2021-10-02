def solution(numbers)
  if numbers.all?(numbers[0])
    return numbers.sum
  end

  sorted_nums = numbers.sort

  numbers.each_with_index do |num, index|
    if num == sorted_nums[-1] && num != sorted_nums[-2]
      numbers[index] = num - sorted_nums[-2]
    elsif num == sorted_nums[-1]

    end
  end

 solution(numbers)
end
