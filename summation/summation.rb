# frozen_string_literal: true

def summation(num)
  num.is_a?(Integer) ? 1.upto(num).to_a.sum : 'Invalid Value'
end
