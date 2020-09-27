# frozen_string_literal: true

def all_possibilities?(arr)
  return false if arr.empty?

  required_nums = (0..(arr.length - 1))
  required_nums.all? { |num| arr.include?(num) }
end
