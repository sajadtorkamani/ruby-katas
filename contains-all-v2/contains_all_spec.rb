require_relative './contains_all'

describe :contains_all? do
  it 'returns correct result' do
    expect(contains_all?([1, 2, 3], [2, 3])).to be true
    expect(contains_all?([1, 2, 3], [1, 2, 2])).to be false
    expect(contains_all?([1.0, 2.0, 3.0], [1, 2, 3])).to be false
  end
end
