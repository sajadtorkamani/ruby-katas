# frozen_string_literal: true

require_relative '../src/check_digit'

describe 'check_digit' do
  it 'returns correct result' do
    expect(check_digit(67_845_123_654, 4, 2, 4)).to be true
    expect(check_digit(1_234_567, 1, 0, 1)).to be true
    expect(check_digit(1_234_567, 0, 1, 2)).to be true
    expect(check_digit(6_668_844_536_485, 0, 0, 6)).to be true
    expect(check_digit(9_999_999_999, 2, 5, 1)).to be false
  end
end
