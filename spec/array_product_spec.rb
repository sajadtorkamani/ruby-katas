# frozen_string_literal: true

require_relative '../src/array_product'

describe 'array_product' do
  it 'returns highest possible product' do
    expect(array_product([[1, 2], [3, 4]])).to eq 8
    expect(array_product([[10, -15], [-1, -3]])).to eq 45
    expect(array_product([[-1, 2, -3, 4], [1, -2, 3, -4]])).to eq 12
    expect(array_product([[-11, -6], [-20, -20], [18, -4], [-20, 1]])).to eq 17_600
    expect(array_product([[14, 2], [0, -16], [-12, -16]])).to eq 3584
    expect(array_product([[-3, -4], [1, 2, -3]])).to eq 12
  end
end
