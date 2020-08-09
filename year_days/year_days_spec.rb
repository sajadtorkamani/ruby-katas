require_relative 'year_days'

describe :year_days do
  it 'returns 366 days for leap years' do
    expect(year_days?(0)).to be 366
    expect(year_days(64)).to eq 366
    expect(year_days(2000)).to eq 366
    expect(year_days(2016)).to eq 366
  end

  it 'returns 365 for non-leap years' do
    expect(year_days(666)).to eq 365
    expect(year_days(1857)).to eq 365
    expect(year_days(1974)).to eq 365
    expect(year_days(300)).to eq 365
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

