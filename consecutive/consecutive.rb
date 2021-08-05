# frozen_string_literal: true

def consecutive(list, a, b)
  list.join('_').match?(/#{a}_#{b}|#{b}_#{a}/)
end
