# frozen_string_literal: true

require_relative 'get_free_urinals'

describe 'get_free_urinals' do
  it 'returns number of free urinals' do
    expect(get_free_urinals('1000000000')).to eq 4
    expect(get_free_urinals('10001')).to eq 1
    expect(get_free_urinals('1001')).to eq 0
    expect(get_free_urinals('00000')).to eq 3
    expect(get_free_urinals('0000')).to eq 2
    expect(get_free_urinals('01000')).to eq 1
    expect(get_free_urinals('00010')).to eq 1
    expect(get_free_urinals('10000')).to eq 2
    expect(get_free_urinals('1')).to eq 0
    expect(get_free_urinals('0')).to eq 1
    expect(get_free_urinals('10')).to eq 0
  end

  it 'handles invalid inputs' do
    expect(get_free_urinals('110')).to eq(-1)
    expect(get_free_urinals('1011000001')).to eq(-1)
  end
end
