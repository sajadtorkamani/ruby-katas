# frozen_string_literal: true

def spec_swap(str, num)
  binary = num.to_s(2)
  char_index = 0

  str.each_char.map do |char|
    next char if char.match?(/[^A-Za-z]/)

    bit = binary[char_index % binary.length]
    char_index += 1

    bit == '1' ? swap_case(char) : char
  end.join('')
end

def swap_case(char)
  if char == char.upcase
    char.downcase
  else
    char.upcase
  end
end