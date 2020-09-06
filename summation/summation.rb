# frozen_string_literal: true

def summation(x)
  x.is_a?(Integer) ? 1.upto(x).to_a.sum : 'Invalid Value'
end
