# frozen_string_literal: true

require_relative '../src/gaderypoluki_cypher'

describe 'encode' do
  it 'correctly encodes input string' do
    expect(encode('ABCD')).to eq 'GBCE'
    expect(encode('GBCE')).to eq 'ABCD'
    expect(encode('Gug hgs g cgt')).to eq 'Ala has a cat'
  end
end

describe 'decode' do
  it 'correctly decodes input string' do
    expect(decode('agedyropulik')).to eq 'gaderypoluki'
    expect(decode('Ala has a cat')).to eq 'Gug hgs g cgt'
    expect(decode('gaderypoluki')).to eq 'agedyropulik'
  end
end
