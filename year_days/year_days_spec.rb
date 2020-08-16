require_relative 'year_days'

describe :year_days do
  it 'returns 366 days for leap years' do
    expect(year_days(0)).to eq '0 has 366 days'
    expect(year_days(64)).to eq '64 has 366 days'
    expect(year_days(2000)).to eq '2000 has 366 days'
    expect(year_days(2016)).to eq '2016 has 366 days'
  end

  it 'returns 365 for non-leap years' do
    expect(year_days(666)).to eq '666 has 365 days'
    expect(year_days(1857)).to eq '1857 has 365 days'
    expect(year_days(1974)).to eq '1974 has 365 days'
    expect(year_days(300)).to eq '300 has 365 days'
  end
end

describe :leap_year? do
  it 'returns correct result' do
    expect(leap_year?(0)).to be true
    expect(leap_year?(64)).to be true
    expect(leap_year?(2000)).to be true
    expect(leap_year?(2016)).to be true

    expect(leap_year?(666)).to be false
    expect(leap_year?(1857)).to be false
    expect(leap_year?(1974)).to be false
    expect(leap_year?(300)).to be false
  end
end

