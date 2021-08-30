# frozen_string_literal: true

require_relative '../src/map'

func = ->(num) { Integer(num).even? }

describe 'map' do
  it 'maps over array using the given function' do
    expect(map([1, 2, 3, '8'], func)).to eq [false, true, false, true]
    expect(map([77, 84, 18, 43, 16, 70, 53], func)).to eq [false, true, true, false, true, true, false]
    expect(map([9, 53], func)).to eq [false, false]
  end

  it 'validates that second argument is a lambda' do
    expect(map([1, 96, 37, 60, 7], 'test')).to eq 'given argument is not a function'
  end

  it 'validates that array only contains integers or numeric-like strings' do
    expect(map([72, 12, 30, 'q'], func)).to eq 'array should contain only numbers'
  end
end
