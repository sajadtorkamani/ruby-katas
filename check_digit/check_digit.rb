def check_digit(number, index1, index2, digit)
  start_index, end_index = [index1, index2].sort
  search_range = number.to_s[start_index..end_index]

  search_range.include? digit.to_s
end
