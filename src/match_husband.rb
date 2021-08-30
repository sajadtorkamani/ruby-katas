# frozen_string_literal: true

def match_husband(usefulness, months)
  woman_needs = 100 * (0.85**months)
  man_score =  usefulness.sum

  man_score >= woman_needs ? 'Match!' : 'No match!'
end
