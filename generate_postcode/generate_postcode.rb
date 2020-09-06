# frozen_string_literal: true

def generate_postcode
  def digit
    (1..9).to_a.sample
  end

  def letter
    ('A'..'Z').to_a.sample
  end

  [letter, letter, digit, ' ', digit, letter, letter].join
end
