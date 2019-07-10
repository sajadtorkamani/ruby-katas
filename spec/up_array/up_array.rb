def up_array(nums)
  return nil if nums.empty? || nums.any? { |num| num.negative? || num.digits.count > 1 }

  sum = nums.join.to_i + 1

  sum
    .to_s
    .split('')
    .map(&:to_i)
end
