# frozen_string_literal: true

require_relative '../src/contains_all'

describe 'Array#contains_all?' do
  it 'returns correct result' do
    items = (1..5).to_a

    expect(items.contains_all?([1, 2, 3, 4, 5])).to be true
    expect(items.contains_all?([12, 15])).to be false
    expect(items.contains_all?([9, 2, 5, 4, 10])).to be false
  end
end
