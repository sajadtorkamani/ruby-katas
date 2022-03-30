# frozen_string_literal: true

# rubocop:disable Naming/MethodParameterName
def sum_eq_n?(nums, n)
  return true if nums.empty?

  nums.each.with_index do |num, row_index|
    other_nums = nums.drop(row_index + 1)
    return true if other_nums.any? { |other_num| num + other_num == n }
  end

  false
end

# rubocop:enable Naming/MethodParameterName
