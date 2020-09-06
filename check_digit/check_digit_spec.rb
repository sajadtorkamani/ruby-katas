require_relative 'check_digit'

describe 'check_digit' do
  it 'returns correct result' do
    expect(check_digit(67845123654, 4, 2, 4)).to eq true
    expect(check_digit(1234567, 1, 0, 1)).to eq true
    expect(check_digit(1234567, 0, 1, 2)).to eq true
    expect(check_digit(6668844536485, 0, 0, 6)).to eq true
    expect(check_digit(9999999999, 2, 5, 1)).to eq false
  end
end