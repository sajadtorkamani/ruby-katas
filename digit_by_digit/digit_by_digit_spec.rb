require_relative 'digit_by_digit'

describe :Num do
  it 'can create single-digit numbers' do
    expect(Num.zero.to_i).to eq 0
    expect(Num.one.to_i).to eq 1
    expect(Num.two.to_i).to eq 2
    expect(Num.three.to_i).to eq 3
    expect(Num.four.to_i).to eq 4
    expect(Num.five.to_i).to eq 5
    expect(Num.six.to_i).to eq 6
    expect(Num.seven.to_i).to eq 7
    expect(Num.eight.to_i).to eq 8
    expect(Num.nine.to_i).to eq 9
  end

  it 'can create multi-digit numbers' do
    expect(Num.one.two.to_i).to eq 12
    expect(Num.five.three.two.to_i).to eq 532
    expect(Num.two.zero.two.one.to_i).to eq 2021
  end
end