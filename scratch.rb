def increment_string(input)
  if input == ""
    return "1"
  elsif input[-1] == "0"
    input[-1] = 1.to_s
    return input
  elsif input[-1].match /[a-zA-Z]/
    return input + 1.to_s
  elsif input.length == 1
    input = input.to_i + 1
    input.to_s
  else
  m = input.match /\d+\Z/
  zeros = m[0].match /^0+/
  zeros = zeros.to_s
  chars = input.match /[a-zA-Z]+/

  if chars == nil
    chars = chars[0]
  else chars = ""
  end
  if chars == nil
    chars = ""
  end
  full_num = m[0].to_i
  if full_num.to_s.length < (full_num + 1).to_s.length && zeros.length > 0
    zeros[-1] = ""
  end
  full_num += 1
  nums = zeros + full_num.to_s
  chars + nums
  end
end



p increment_string("009")
