require "rspec"
require "./lib/voting"

describe "voting" do

  it 'handles a tie' do
    voters = [[:dem, :ind, :rep],
              [:rep, :ind, :dem],
              [:ind, :dem, :rep],
              [:ind, :rep, :dem]]
    expect(runoff(voters)).to eq(:ind)
  end

  it 'handles non-ties' do
    voters = [[:d, :a, :e, :b, :c],
              [:b, :e, :d, :c, :a],
              [:e, :a, :c, :b, :d],
              [:e, :d, :a, :b, :c],
              [:d, :b, :a, :e, :c]]

     expect(runoff(voters)).to eq(:e)
  end

  it 'handles stuff' do
    voters = [[:d, :a, :c, :b, :e],
              [:b, :d, :e, :c, :a],
              [:b, :c, :d, :e, :a],
              [:c, :d, :e, :a, :b],
              [:c, :e, :b, :a, :d]]

     expect(runoff(voters)).to eq(:c)
  end

  it 'handles stuff' do
    voters = [[:a, :c, :b, :d, :e],
              [:d, :c, :a, :b, :e],
              [:e, :b, :d, :a, :c],
              [:e, :a, :b, :c, :d],
              [:b, :c, :e, :a, :d]]

     expect(runoff(voters)).to eq(:e)
  end
end
