require_relative 'most_valuable_char'

describe :most_valuable_char do
  it 'returns correct result' do
    expect(most_valuable_char('axyzxyz')).to eq 'x'
    # expect(most_valuable_char('aabccc')).to eq 'c'
    # expect(most_valuable_char('a')).to eq 'a'
    # expect(most_valuable_char('aa')).to eq 'a'
    # expect(most_valuable_char('bcd')).to eq 'b'
    # expect(most_valuable_char('dcbadcba')).to eq 'a'
  end
end

# - Determine the value of each char
#   The value of a character is the difference between the index of its last occurrence and
#   the index of its first occurrence
# - Return the char with the highest value
#  - If there's a tie, return alphabetically lowest char