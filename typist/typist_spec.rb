# frozen_string_literal: true

require_relative 'typist'

describe 'typist' do
  it 'returns correct result' do
    expect(typist('a')).to eq(1)
    expect(typist('aa')).to eq(2)
    expect(typist('A')).to eq(2)
    expect(typist('AA')).to eq(3)
    expect(typist('aA')).to eq(3)
    expect(typist('Aa')).to eq(4)

    # # longer words
    expect(typist('BeiJingDaXueDongMen')).to eq(31)
    expect(typist('AAAaaaBBBbbbABAB')).to eq(21)
    expect(typist('AmericanRAILWAY')).to eq(18)
    expect(typist('AaAaAa')).to eq(12)
    expect(typist('DFjfkdaB')).to eq(11)
  end
end
