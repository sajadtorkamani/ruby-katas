# frozen_string_literal: true

require_relative 'define_suit'

describe :define_suit do
  it 'returns correct suit based on card' do
    expect(define_suit('3C')).to eq 'clubs'
    expect(define_suit('QS')).to eq 'spades'
    expect(define_suit('9D')).to eq 'diamonds'
    expect(define_suit('JH')).to eq 'hearts'
  end
end
