# frozen_string_literal: true

require_relative '../src/summation'

describe 'summation' do
  it 'handles valid inputs' do
    expect(summation(3)).to be(6)
    expect(summation(10)).to be(55)
    expect(summation(5)).to be(15)
  end

  it 'handles invalid inputs' do
    expect(summation('538')).to eql 'Invalid Value'
    expect(summation('Foo')).to eql 'Invalid Value'
    expect(summation(67.9)).to eql 'Invalid Value'
  end
end
