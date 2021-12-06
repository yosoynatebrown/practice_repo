require './lib/data'

def convert_to_ints(depths)
  depths.split("\n").map { |num| num.to_i }
end

def number_of_increases(depths)
  counter = 0
  ints = convert_to_ints(depths)
  ints[1..-1].each_with_index do |int, i|
    i = i + 1
    if int > ints[i - 1]
      counter += 1
    end
  end
  counter
end


def three_measurement_increases(depths)
  ints = convert_to_ints(depths)
  counter = 0
  ints[0..-4].each_with_index do |int, index|
    current = int + ints[index + 1] + ints[index + 2]

    next_3 = ints[index + 1] + ints[index + 2] + ints[index + 3]

    if current < next_3
      counter += 1
    end
  end
    counter
end
