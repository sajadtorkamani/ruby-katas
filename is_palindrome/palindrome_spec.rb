# frozen_string_literal: true

require_relative 'palindrome'

describe 'palindrome?' do
  it 'returns true if input is a palindrome' do
    expect(palindrome?('racecar')).to eq true
    expect(palindrome?('madam')).to eq true

    expect(palindrome?('kitty')).to eq false
    expect(palindrome?('foo')).to eq false
  end

  it 'returns nil if input is not a string' do
    expect(palindrome?(1)).to eq nil
    expect(palindrome?([])).to eq nil
  end
end
