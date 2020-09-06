# frozen_string_literal: true

def generate_postcode
  digit = -> { (1..9).to_a.sample }
  letter = -> { ('A'..'Z').to_a.sample }

  [letter.call, letter.call, digit.call, ' ', digit.call, letter.call, letter.call].join
end
