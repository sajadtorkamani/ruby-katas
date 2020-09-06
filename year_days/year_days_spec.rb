# frozen_string_literal: true

require_relative 'year_days'

describe 'year_days' do
  it 'returns 366 days for leap years' do
    [0, 64, 2000, 2016].each do |year|
      expect(year_days(year)).to eq "#{year} has 366 days"
    end
  end

  it 'returns 365 for non-leap years' do
    [666, 1857, 1974, 3000].each do |year|
      expect(year_days(year)).to eq "#{year} has 365 days"
    end
  end
end

describe '#leap_year' do
  it 'returns true if year is a leap year' do
    [0, 64, 2000, 2016].each do |year|
      expect(leap_year?(year)).to be true
    end
  end

  it 'returns false if year is not a leap year' do
    [666, 1857, 1974, 300].each do |year|
      expect(leap_year?(year)).to be false
    end
  end
end
