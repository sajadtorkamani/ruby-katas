# frozen_string_literal: true

require_relative '../src/odd_not_prime'

describe 'odd_not_prime' do
  it 'returns number of integers that are less or equal to the given num and that are odd but not prime' do
    expect(odd_not_prime(15)).to eq 3
    expect(odd_not_prime(48)).to eq 10
    expect(odd_not_prime(82)).to eq 20
  end
end
