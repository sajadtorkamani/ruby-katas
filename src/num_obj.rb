# frozen_string_literal: true

def num_obj(nums)
  nums.map { |num| { num.to_s => num.chr } }
end
