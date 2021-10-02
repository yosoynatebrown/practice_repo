require "rspec"
require "./lib/smallest_possible_sum"

describe 'solution' do
  it '#solution' do
  expect(solution([9])).to eq(9)
  expect(solution([71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71, 71])).to eq(923)
  expect(solution([1, 21, 55])).to eq(3)
  expect(solution([3, 13, 23, 7, 83])).to eq(5)
  expect(solution([4, 16, 24])).to eq(12)
  expect(solution([30, 12])).to eq(12)
  expect(solution([60, 12, 96, 48, 60, 24, 72, 36, 72, 72, 48])).to eq(132)
  expect(solution([11, 22])).to eq(22)
end
end
