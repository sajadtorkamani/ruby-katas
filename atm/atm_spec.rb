# frozen_string_literal: true

require_relative 'atm'

describe 'atm' do
  it 'returns correct value when choosing notes is possible' do
    expect(atm(770)).to eq 4
    expect(atm(550)).to eq 2
    expect(atm(10)).to eq 1
    expect(atm(1250)).to eq 4
  end

  it 'returns false if choosing notes is not possible' do
    expect(atm(125)).to eq(-1)
    expect(atm(666)).to eq(-1)
    expect(atm(42)).to eq(-1)
  end
end
