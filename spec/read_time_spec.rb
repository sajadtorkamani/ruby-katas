# frozen_string_literal: true

require_relative '../src/read_time'

describe 'read_time' do
  it 'handles exact hours' do
    expect(read_time('13:00')).to eql "one o'clock"
    expect(read_time('12:00')).to eql "twelve o'clock"
  end

  it 'handles minutes <= 30' do
    expect(read_time('13:09')).to eql 'nine minutes past one'
    expect(read_time('13:29')).to eql 'twenty nine minutes past one'
    expect(read_time('13:15')).to eql 'quarter past one'
    expect(read_time('13:30')).to eql 'half past one'
    expect(read_time('19:01')).to eql 'one minute past seven'
    expect(read_time('07:01')).to eql 'one minute past seven'
    expect(read_time('12:01')).to eql 'one minute past twelve'

    expect(read_time('00:08')).to eql 'eight minutes past midnight'
    expect(read_time('00:01')).to eql 'one minute past midnight'
    expect(read_time('00:01')).to eql 'one minute past midnight'
    expect(read_time('00:01')).to eql 'one minute past midnight'
  end

  it 'handles minutes > 30' do
    expect(read_time('13:31')).to eql 'twenty nine minutes to two'
    expect(read_time('13:59')).to eql 'one minute to two'
    expect(read_time('11:31')).to eql 'twenty nine minutes to twelve'
    expect(read_time('11:59')).to eql 'one minute to twelve'
    expect(read_time('01:59')).to eql 'one minute to two'
    expect(read_time('00:48')).to eql 'twelve minutes to one'
    expect(read_time('11:45')).to eql 'quarter to twelve'
    expect(read_time('13:45')).to eql 'quarter to two'
    expect(read_time('01:45')).to eql 'quarter to two'

    expect(read_time('23:31')).to eql 'twenty nine minutes to midnight'
    expect(read_time('00:00')).to eql 'midnight'
    expect(read_time('23:45')).to eql 'quarter to midnight'
    expect(read_time('23:59')).to eql 'one minute to midnight'
  end
end
