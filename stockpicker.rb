def stock_picker(stock_prices)
# for each item in array,
#   subtract every other item in array

prices_hash = Hash.new
sorted_prices = stock_prices.sort

index_array = (0..stock_prices.length).to_a

if sorted_prices[0] == stock_prices[-1]
  then print 'smallest number last'
elsif stock_prices.index(sorted_prices[-1]) == 0
  then print 'biggest number first'
end

stock_prices.each_with_index { |price, index|


}
#   add results to hash with indexes as values
#   if index 0 is less than index 1, return both indexes in array
end


stock_picker([17,3,6,9,15,8,6,1,10])
