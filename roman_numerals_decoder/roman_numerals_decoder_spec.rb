# frozen_string_literal: true

require_relative 'roman_numerals_decoder'

describe 'roman_numerals_decoder' do
  it 'returns correct result' do
    examples = [
      ['XXI', 21],
      ['I', 1],
      ['III', 3],
      ['IV', 4],
      ['MMVIII', 2008],
      ['MDCLXVI', 1666]
    ]

    examples.each do |example|
      expect(roman_numerals_decoder(example[0])).to eq example[1]
    end
  end
end
