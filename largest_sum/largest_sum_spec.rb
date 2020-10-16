# frozen_string_literal: true

require_relative 'largest_sum'

describe 'largest_sum' do
  it 'returns sum of the largest substring' do
    expect(largest_sum('72102450111111090')).to eq 11
    expect(largest_sum('123004560')).to eq 15
    expect(largest_sum('0')).to eq 0
  end
end
