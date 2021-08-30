# frozen_string_literal: true

require_relative '../src/double_trouble'

describe 'double_trouble' do
  it 'returns correct result' do
    expect(double_trouble([1, 3, 5, 6, 7, 4, 3], 7)).to eq [1, 3, 5, 6, 7, 4]
    expect(double_trouble([4, 1, 1, 1, 4], 2)).to eq [4, 1, 4]
    expect(double_trouble([2, 2, 2, 2, 2, 2], 4)).to eq [2]
    expect(double_trouble([2, 6, 2], 8)).to eq [2, 2]
  end
end
