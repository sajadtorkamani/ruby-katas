# frozen_string_literal: true

require_relative './sum_eq_n'

describe 'sum_eq_n?' do
  it 'returns correct result' do
    expect(sum_eq_n?([1, 2, 3, 4], 7)).to be true
    expect(sum_eq_n?([1, 2, 3, 13], 14)).to be true
    expect(sum_eq_n?([1, 2, 3, 4], 42)).to be false
    expect(sum_eq_n?([], 0)).to be true
  end
end
