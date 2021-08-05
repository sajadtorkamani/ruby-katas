# frozen_string_literal

require_relative 'over_the_road'

describe 'odd_not_prime' do
  it 'returns correct opposite house number for small streets' do
    expect(over_the_road(1, 3)).to eq 6
    expect(over_the_road(3, 3)).to eq 4
    expect(over_the_road(2, 3)).to eq 5
  end

  it 'returns correct opposite house number for long streets' do
    expect(over_the_road(3, 5)).to eq 8
    expect(over_the_road(7, 11)).to eq 16
  end
end