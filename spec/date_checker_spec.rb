# frozen_string_literal: true

require_relative '../src/date_checker'

describe 'date_checker' do
  it 'returns true if date is in the format 01-09-2016 01:20' do
    expect(date_checker('01-09-2016 01:20')).to be true
    expect(date_checker('01-09-2016 01;20')).to be false
    expect(date_checker('01_09_2016 01:20')).to be false
    expect(date_checker('14-10-1066 12:00')).to be true
    expect(date_checker('Tenth of January')).to be false
    expect(date_checker('20 Sep 1988')).to be false
    expect(date_checker('19-12-2050 13:34')).to be true
    expect(date_checker('Tue Sep 06 2016 01:46:38 GMT+0100')).to be false
    expect(date_checker('01-09-2016 00:00')).to be true
    expect(date_checker('01-09-2016 2:00')).to be false
  end
end
