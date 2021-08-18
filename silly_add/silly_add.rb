# frozen_string_literal: true

# Not the cleanest...
def silly_add(num1, num2)
  result = []
  num1_digits, num2_digits = padded_digits(num1, num2)

  num1_digits.each.with_index do |a_digit, index|
    result << (a_digit + num2_digits[index])
  end

  result.join.to_i
end

def padded_digits(num1, num2)
  max_digits = [num1, num2].map(&:to_s).map(&:length).max

  [num1, num2].map do |num|
    format("%0#{max_digits}d", num)
      .chars
      .map(&:to_i)
  end
end
