# frozen_string_literal: true

require_relative '../src/str_to_hash'

describe 'str_to_hash' do
  it 'returns hash from strong' do
    expect(str_to_hash('a=1, b=2, c=3, d=4')).to eql({ a: 1, b: 2, c: 3, d: 4 })
  end
end
