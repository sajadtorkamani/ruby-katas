# frozen_string_literal: true

require_relative './change_count'

describe 'change_count' do
  it 'returns correct result' do
    expect(change_count('dime penny dollar')).to eq '$1.11'
    expect(change_count('dime penny nickel')).to eq '$0.16'
    expect(change_count('quarter quarter')).to eq '$0.50'
    expect(change_count('dollar penny dollar')).to eq '$2.01'
    expect(change_count('dollar dollar dollar dollar dollar dollar dollar dollar dollar dollar penny')).to eq '$10.01'
  end
end
