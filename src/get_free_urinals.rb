# frozen_string_literal: true

def get_free_urinals(urinals)
  return -1 if urinals.match?(/11/)

  count = 0
  free_urinal_regex = /(^|0)0(0|$)/

  while urinals.match?(free_urinal_regex)
    count += 1
    urinals = urinals.sub(free_urinal_regex, '010')
  end

  count
end
