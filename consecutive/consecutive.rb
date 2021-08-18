# frozen_string_literal: true

def consecutive(list, num1, num2)
  list.join('_').match?(/#{num1}_#{num2}|#{num2}_#{num1}/)
end
