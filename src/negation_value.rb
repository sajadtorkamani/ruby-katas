# frozen_string_literal: true

def negation_value(negations_str, val)
  num_negations = negations_str.length

  return !!val if num_negations.zero?

  result = val
  num_negations.times do
    result = !result
  end

  result
end
