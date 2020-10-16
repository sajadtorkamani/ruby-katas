# frozen_string_literal: true

def baubles_on_tree(num_baubles, num_branches)
  return 'Grandma, we will have to buy a Christmas tree first!' if num_branches.zero?

  branches = Array.new(num_branches, 0)
  branch_index = 0

  while num_baubles.positive?
    branches[branch_index] += 1

    num_baubles -= 1
    branch_index = branch_index == (num_branches - 1) ? 0 : branch_index + 1
  end

  branches
end
