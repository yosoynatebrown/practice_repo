def runoff(voters)
  voting_options = voters.flatten.uniq
  voters_transposed = voters.transpose
  vote_count = voters_transposed[0].each_with_object(Hash.new(0)) do |vote, hash|
    hash[vote] += 1
  end
  voting_options.each do |vote|
    if vote_count.keys.include?(vote) == false
      voters.each do |vote_array|
        vote_array.delete(vote)
      end
    end
  end
  winner = vote_count.max_by do |vote, count|
    count
  end
  vote_sum = vote_count.sum do |vote, count|
    count
  end
  if (winner[1]/vote_sum) > 0.5
    return winner[0]
  else
    loser = vote_count.min_by do |vote, count|
      count
    end

    vote_count.each do |vote, count|
      if count == loser[1]
        voters.each do |vote_array|
          vote_array.delete(vote)
        end
      end
    end
  end
  if voters.flatten.empty?
    nil
  elsif voters.flatten.all?(voters[0][0])
    voters[0][0]
  else
    runoff(voters)
  end
end
