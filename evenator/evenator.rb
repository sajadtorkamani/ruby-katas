# frozen_string_literal: true

def evenator(str)
  str
    .gsub(/[.,?!_]/, '')
    .split(' ')
    .map { |word| word.size.even? ? word : "#{word}#{word[-1]}" }
    .join(' ')
end
