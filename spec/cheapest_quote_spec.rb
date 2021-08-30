# frozen_string_literal: true

require_relative '../src/cheapest_quote'

describe 'cheapest_quote' do
  it 'returns cheapest quote based on number of newspapers' do
    expect(cheapest_quote(1)).to eq 0.10
    expect(cheapest_quote(5)).to eq 0.49
    expect(cheapest_quote(10)).to eq 0.97
    expect(cheapest_quote(20)).to eq 1.93
    expect(cheapest_quote(40)).to eq 3.85
    expect(cheapest_quote(41)).to eq 3.95
    expect(cheapest_quote(80)).to eq 7.70
    expect(cheapest_quote(26)).to eq 2.52
    expect(cheapest_quote(0)).to eq 0.0
    expect(cheapest_quote(499)).to eq 48.06
  end

  it 'rounds quote to 2 decimal places' do
    expect(cheapest_quote(21_274)).to eq 2047.65
  end
end
