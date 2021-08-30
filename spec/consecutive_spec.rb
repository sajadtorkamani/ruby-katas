# frozen_string_literal: true

require_relative '../src/consecutive'

describe 'consecutive' do
  it 'returns true if a and b appear consecutively in the list' do
    expect(consecutive([1, 6, 9, -3, 4, -78, 0], -3, 4)).to be true
    expect(consecutive([1, 3, 5, 7], 3, 1)).to be true
  end

  it 'returns false if a and b do not appear consecutively in the list' do
    expect(consecutive([1, 3, 5, 7], 3, 7)).to be false
  end
end
