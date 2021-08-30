# frozen_string_literal: true

require_relative '../src/match_husband'

describe 'match_husband' do
  it 'returns correct result' do
    expect(match_husband([15, 24, 12], 4)).to eq 'No match!'
    expect(match_husband([26, 23, 19], 3)).to eq 'Match!'
    expect(match_husband([11, 25, 36], 1)).to eq 'No match!'
    expect(match_husband([22, 9, 24], 5)).to eq 'Match!'
    expect(match_husband([8, 11, 4], 10)).to eq 'Match!'
    expect(match_husband([17, 31, 21], 2)).to eq 'No match!'
    expect(match_husband([34, 25, 36], 1)).to eq 'Match!'
    expect(match_husband([35, 35, 29], 0)).to eq 'No match!'
    expect(match_husband([35, 35, 30], 0)).to eq 'Match!'
    expect(match_husband([35, 35, 31], 0)).to eq 'Match!'
  end
end
