# frozen_string_literal: true

require_relative '../src/palindrome'

describe 'palindrome?' do
  it 'returns true if input is a palindrome' do
    expect(palindrome?('racecar')).to be true
    expect(palindrome?('madam')).to be true

    expect(palindrome?('kitty')).to be false
    expect(palindrome?('foo')).to be false
  end

  it 'returns nil if input is not a string' do
    expect(palindrome?(1)).to be_nil
    expect(palindrome?([])).to be_nil
  end
end
