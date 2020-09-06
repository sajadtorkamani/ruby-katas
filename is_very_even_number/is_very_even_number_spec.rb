# frozen_string_literal: true

require_relative './is_very_even_number'

describe 'is_very_even_number' do
  it 'returns correct result' do
    expect(very_even_number?(0)).to be true
    expect(very_even_number?(4)).to be true
    expect(very_even_number?(5)).to be false

    expect(very_even_number?(12)).to be false
    expect(very_even_number?(222)).to be true
    expect(very_even_number?(45)).to be false
    expect(very_even_number?(4554)).to be false
    expect(very_even_number?(1234)).to be false
    expect(very_even_number?(88)).to be false
    expect(very_even_number?(24)).to be true
    expect(very_even_number?(400_000_220)).to be true
  end
end
