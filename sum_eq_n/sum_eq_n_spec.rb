require_relative './sum_eq_n'

describe :sum_eq_n? do
  it 'returns correct result' do
    expect(sum_eq_n?([1, 2, 3, 4], 7)).to eql true
    expect(sum_eq_n?([1, 2, 3, 13], 14)).to eql true
    expect(sum_eq_n?([1, 2, 3, 4], 42)).to eql false
    expect(sum_eq_n?([], 0)).to eql true
  end
end
