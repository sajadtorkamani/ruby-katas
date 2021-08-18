# frozen_string_literal: true

def mirror(nums)
  return nums if nums.count <= 1

  sorted = nums.sort
  first_half = sorted[..-2]
  middle = sorted.last
  second_half = first_half.reverse

  first_half + [middle] + second_half
end
