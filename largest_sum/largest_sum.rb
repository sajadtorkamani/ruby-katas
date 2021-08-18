# frozen_string_literal: true

def largest_sum(str)
  str
    .split('0')
    .map { |s| s.chars.map(&:to_i).sum }
    .max || 0
end
