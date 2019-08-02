require_relative './letter_frequency'

describe 'letter_frequency' do
  it 'returns correct result' do
    result = letter_frequency('wklv lv d vhfuhw phvvdjh')
    expected = [['v', 5], ['h', 4], ['d', 2], ['l', 2], ['w', 2], ['f', 1], ['j', 1], ['k', 1], ['p', 1], ['u', 1]]

    expect(result).to eq expected
  end
end