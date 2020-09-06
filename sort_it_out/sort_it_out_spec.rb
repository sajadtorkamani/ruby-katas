require_relative 'sort_it_out'

describe :sort_it_out do
  it 'sorts numbers correctly' do
    expect(sort_it_out([26, 243, 52, 2, 432_414, 1, 11, 46, 32])).to eq [1, 11, 243, 432_414, 52, 46, 32, 26, 2]
    expect(sort_it_out([19, 65, 88, 112, 60, 14, 33, 49, 88])).to eq [19, 33, 49, 65, 112, 88, 88, 60, 14]
    expect(sort_it_out([68, 25, 99, 50, 10, 67, 2, 5, 8, 34, 67])).to eq [5, 25, 67, 67, 99, 68, 50, 34, 10, 8, 2]
  end

  it 'handles empty array' do
    expect(sort_it_out([])).to eq []
  end

  it 'handles decimals' do
    expect(sort_it_out([11, 22, 33, 44, 55, 55, 90.4, 4, 78])).to eq [11, 33, 55, 55, 90.4, 78, 44, 22, 4]
  end
end
