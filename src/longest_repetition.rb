# frozen_string_literal: true

def longest_repetition(str)
  return ['', 0] if str.empty?

  repetitions = str.scan(/(\w)(\1*)/).map(&:join)
  longest = repetitions.min do |a, b|
    a.length == b.length ? repetitions.index(a) <=> repetitions.index(b) : b.length <=> a.length
  end

  [longest[0], longest.size]
end
