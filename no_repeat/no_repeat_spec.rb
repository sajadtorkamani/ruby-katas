# frozen_string_literal: true

require_relative 'no_repeat'

describe 'no_repeat' do
  it 'returns the first non-repeating character' do
    expect(no_repeat('aabbccdde')).to eq 'e'
    expect(no_repeat('wxyz')).to eq 'w'
    expect(no_repeat('testing')).to eq 'e'
    expect(no_repeat('codewars')).to eq 'c'
    expect(no_repeat('Testing')).to eq 'T'
  end
end
