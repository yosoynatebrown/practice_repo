def climb_stairs(n)
  count = 0
  possibilities = []
  (n + 1).times do |num|
    unless num == 0
      possibilities << [1, 2].repeated_permutation(num).to_a.select {|arr| arr.sum == n}
    end
  end
  possibilities.shift
  possibilities.flatten(1).length
end
p climb_stairs(5)
