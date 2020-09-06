# frozen_string_literal: true

require_relative 'most_valuable_char'

describe :most_valuable_char do
  it 'returns correct result' do
    expect(most_valuable_char('axyzxyz')).to eq 'x'
    expect(most_valuable_char('aabccc')).to eq 'c'
    expect(most_valuable_char('a')).to eq 'a'
    expect(most_valuable_char('aa')).to eq 'a'
    expect(most_valuable_char('bcd')).to eq 'b'
    expect(most_valuable_char('dcbadcba')).to eq 'a'
  end
end
