# frozen_string_literal: true

def array_product(arr)
  arr
    .inject(&:product)
    .map(&:flatten)
    .max_by { |nums| nums.reduce(&:*) }
    .reduce(:*)
end
