# frozen_string_literal: true

def double_trouble(nums, target)
  num_loops = nums.length

  num_loops.times do
    doubles = nums.each_cons(2).to_a
    trouble = doubles.select { |double| double.sum == target }.first

    break if trouble.nil?

    trouble_index = doubles.index(trouble) + 1
    nums.delete_at(trouble_index)
  end

  nums
end
