# frozen_string_literal: true

def solve(str)
  str
    .gsub(/[aeiou]/, '*')
    .scan(/\w+/)
    .map do |substr|
      substr.chars.reduce(0) { |sum, char| sum + char.ord - 96 }
    end
    .max
end
