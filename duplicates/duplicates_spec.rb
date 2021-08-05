# frozen_string_literal: true

require_relative 'duplicates'

describe 'duplicates' do
  it 'returns duplicates in the order that they appeared in' do
    expect(duplicates([1, 2, 4, 4, 3, 3, 1, 5, 3, '5'])).to match_array([4, 3, 1])
    expect(duplicates([0, 1, 2, 3, 4, 5])).to match_array([])
  end

  it 'handles nil input' do
    expect(duplicates(nil)).to eq []
  end
end
