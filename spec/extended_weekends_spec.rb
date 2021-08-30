# frozen_string_literal: true

require_relative '../src/extended_weekends'

describe 'extended_weekends' do
  it 'returns number of months that start with a friday' do
    expect(extended_weekends(2016, 2020)).to eq ['Jan', 'May', 5]
    # expect(extended_weekends(1900, 1950)).to eq ['Mar', 'Dec', 51]
    # expect(extended_weekends(1800, 2500)).to eq ['Aug', 'Oct', 702]
  end
end
