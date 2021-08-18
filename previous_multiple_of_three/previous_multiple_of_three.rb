# frozen_string_literal: true

def previous_multiple_of_three(num)
  return num if num % 3 === 0

  (num.to_s.length - 1).times do
    num = remove_last_digit(num)
    return num if num % 3 === 0
  end

  nil
end

def remove_last_digit(num)
  return nil if num.to_s.length == 1

  num.to_s[..-2].to_i
end
