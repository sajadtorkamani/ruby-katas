# frozen_string_literal: true

require_relative 'all_possibilities'

describe 'all_possibilities' do
  it 'returns true if array contains all numbers between 0 and array.length-1' do
    expect(all_possibilities?([3, 2, 1, 0])).to eq true
    expect(all_possibilities?([0, 1, 2, 3])).to eq true
    expect(all_possibilities?([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])).to eq true
    expect(all_possibilities?([0])).to eq true
  end

  it 'returns false if array does not contain all numbers between 0 and array.length-1' do
    expect(all_possibilities?([1, 2, 3, 4])).to eq false
    expect(all_possibilities?([0, 2, 19, 4, 4])).to eq false
    expect(all_possibilities?([0, 2, 3])).to eq false
    expect(all_possibilities?([0, 1, 3, -2, 5, 4])).to eq false
    expect(all_possibilities?([1, -1, 2, -2, 3, -3, 6])).to eq false
  end

  it 'returns false if array is empty' do
    expect(all_possibilities?([])).to eq false
  end
end
