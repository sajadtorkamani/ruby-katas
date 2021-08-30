# frozen_string_literal: true

def total_licks(challenges)
  total = 252 + challenges.values.sum
  toughest_challenge = challenges.select { |_k, v| v.positive? }.key(challenges.values.max)

  if toughest_challenge
    "It took #{total} licks to get to the tootsie roll center of a tootsie pop. The toughest challenge was "\
    "#{toughest_challenge}."
  else
    "It took #{total} licks to get to the tootsie roll center of a tootsie pop."
  end
end
