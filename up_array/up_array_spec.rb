# frozen_string_literal: true

require_relative './up_array'

describe 'up_array' do
  it 'returns nil if array is empty' do
    expect(up_array([])).to be_nil
  end

  it 'returns nil if array has negative integer' do
    expect(up_array([1, -2])).to be_nil
  end

  it 'returns nil if array has an integer that is multiple digits' do
    expect(up_array([1, 22])).to be_nil
  end

  it 'returns sum for valid input' do
    expect(up_array([2, 3, 9])).to eq [2, 4, 0]
    expect(up_array([4, 3, 2, 5])).to eq [4, 3, 2, 6]
  end
end
