# frozen_string_literal: true

require_relative '../src/vowel_one'

describe 'vowel_one' do
  it 'replaces vowels with 1' do
    expect(vowel_one('vowelOne')).to eq '01010101'
  end

  it 'replaces non-vowels with 0' do
    expect(vowel_one('123, arou')).to eq '000001011'
  end
end
