def first_20_primes
  divisibles = []
  num_array = (2..100).to_a
  num_array_2 = (2..100).to_a
  primes = (2..100).to_a
  num_array.each do |number|
    primes.each do |num|
      if num % number == 0
        
      end
    end
  end
end

first_20_primes
