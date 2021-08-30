# frozen_string_literal: true

require_relative '../src/calculate'

describe 'calculate' do
  it 'returns correct result' do
    expect(calculate('Jerry has 34 apples and gains 6')).to eq 40
    expect(calculate('Tom has 20 apples and gains 15')).to eq 35
    expect(calculate('Pippi has 20 tunas and gains 0')).to eq 20
    expect(calculate('Fred has 110 bananas and loses 50')).to eq 60
    expect(calculate('Panda has 48 apples and loses 4')).to eq 44
  end
end
