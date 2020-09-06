# frozen_string_literal: true

require_relative './turkish_number'

describe 'turkish_numbers' do
  it 'returns correct turkish string representation of number' do
    expect(turkish_number(1)).to eq 'bir'
    expect(turkish_number(8)).to eq 'sekiz'
    expect(turkish_number(10)).to eq 'on'
    expect(turkish_number(20)).to eq 'yirmi'
    expect(turkish_number(13)).to eq 'on üç'
    expect(turkish_number(27)).to eq 'yirmi yedi'
    expect(turkish_number(38)).to eq 'otuz sekiz'
    expect(turkish_number(77)).to eq 'yetmiş yedi'
    expect(turkish_number(94)).to eq 'doksan dört'
  end
end
