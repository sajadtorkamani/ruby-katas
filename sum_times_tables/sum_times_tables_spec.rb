require_relative 'sum_times_tables'

describe :sum_times_tables do
  it 'returns correct result' do
    expect(sum_times_tables([2, 3], 1, 3)).to eq 30
    expect(sum_times_tables([1, 3, 5], 1, 1)).to eq 9
    expect(sum_times_tables([1, 3, 5], 1, 10)).to eq 495
    expect(sum_times_tables([], 1, 10)).to eq 0
    expect(sum_times_tables([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1, 10)).to eq 3025
    expect(sum_times_tables([10, 9, 8, 7, 6, 5, 4, 3, 2, 1], 1, 10)).to eq 3025
    expect(sum_times_tables([5, 4, 7, 8, 9, 6, 3, 2, 10, 1], 1, 10)).to eq 3025
    expect(sum_times_tables([-2], -1, 3)).to eq(-10)
    expect(sum_times_tables([-2, 2], -1, 3)).to eq 0
    expect(sum_times_tables([-2, 3], -1, 3)).to eq 5
    expect(sum_times_tables([2, -3], -1, 3)).to eq(-5)
    expect(sum_times_tables([2, 4, 7], -100, 100)).to eq 0
    expect(sum_times_tables([2, 4, 7], 1, 100)).to eq 65_650
    expect(sum_times_tables([2, 4, 7], 1, 101)).to eq 66_963
  end
end
