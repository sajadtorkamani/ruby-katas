# frozen_string_literal: true

SYMBOLS = { 'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000, '4': 4, '9': 9 }.freeze

def roman_numerals_decoder(roman)
  roman
    .gsub(/IV/, '4').gsub('IX', '9')
    .each_char.map { |char| SYMBOLS[char.to_sym] }
    .sum
end
