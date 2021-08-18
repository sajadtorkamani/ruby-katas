# frozen_string_literal: true

require_relative 'silly_add'

describe 'silly_add' do
  it 'returns correct result' do
    expect(silly_add(0, 1)).to eq 1
    expect(silly_add(0, 0)).to eq 0
    expect(silly_add(2, 11)).to eq 13
    expect(silly_add(16, 18)).to eq 214
    expect(silly_add(26, 39)).to eq 515
    expect(silly_add(122, 81)).to eq 1103
  end
end

describe 'padded_digits' do
  it 'returns correct result' do
    expect(padded_digits(2, 11)).to eq [[0, 2], [1, 1]]
    expect(padded_digits(122, 81)).to eq [[1, 2, 2], [0, 8, 1]]
    expect(padded_digits(16, 18)).to eq [[1, 6], [1, 8]]
  end
end
