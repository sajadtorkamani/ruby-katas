# frozen_string_literal: true

def sort_it_out(nums)
  odds = nums.select { |n| n.floor.odd? }.sort
  evens = nums.select { |n| n.floor.even? }.sort.reverse

  [*odds, *evens]
end
