# frozen_string_literal: true

require 'debug'

require_relative '../src/baum_sweet'

describe 'BaumSweet' do
  describe '#value' do
    it 'returns 0 if the binary representation of number contains blocks of consecutive 0s of odd length' do
      [2, 5, 6, 8].each do |num|
        expect(BaumSweet.new.value(num)).to eq 0
      end
    end

    it 'returns 1 if the binary representation of number does not contain blocks of consective 0s of odd length' do
      [0, 1, 3, 4, 7, 9].each do |num|
        expect(BaumSweet.new.value(num)).to eq 1
      end
    end
  end

  it 'is an Enumerator' do
    expect(BaumSweet.new).to be_an(Enumerator)
  end

  it 'returns the correct sequence' do
    expect(BaumSweet.new.take(20)).to eq [
      1, 1, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 1, 1, 0, 0, 1
    ]
  end
end
