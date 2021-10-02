require "rspec"
require "./spiral"

describe 'spirals' do

  it "five" do
    expect(spiralize(5)).to eq(      [[1,1,1,1,1],
                                      [0,0,0,0,1],
                                      [1,1,1,0,1],
                                      [1,0,0,0,1],
                                      [1,1,1,1,1]])
end

  it "eight" do
    expect(spiralize(8)).to eq(      [[1,1,1,1,1,1,1,1],
                                      [0,0,0,0,0,0,0,1],
                                      [1,1,1,1,1,1,0,1],
                                      [1,0,0,0,0,1,0,1],
                                      [1,0,1,0,0,1,0,1],
                                      [1,0,1,1,1,1,0,1],
                                      [1,0,0,0,0,0,0,1],
                                      [1,1,1,1,1,1,1,1]])
end
end
