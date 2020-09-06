# frozen_string_literal: true

def sum_eq_n?(nums, n)
  return n.zero? if nums.empty?

  nums.each.with_index do |num, index|
    other_nums = nums.drop(index + 1)
    return true if other_nums.any? { |other_num| num + other_num === n }
  end

  false
end
