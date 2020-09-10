# frozen_string_literal: true

require_relative 'determine_time'

describe 'determine_time' do
  it 'returns true if combined duration is less than or equal to 24 hours' do
    expect(determine_time(%w[00:30:00 02:30:00 00:15:00])).to be true
    expect(determine_time([])).to be true
    expect(determine_time(%w[12:00:00 12:00:00])).to be true
  end

  it 'returns false if combined duration is greater than 24 hours' do
    expect(determine_time(%w[06:00:00 12:00:00 06:30:00])).to be false
  end
end
