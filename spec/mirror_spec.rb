# frozen_string_literal: true

require_relative '../src/mirror'

describe 'mirror' do
  it 'returns correct result' do
    expect(mirror([1, 3, 2])).to eq [1, 2, 3, 2, 1]
    expect(mirror([-8, 42, 18, 0, -16])).to eq [-16, -8, 0, 18, 42, 18, 0, -8, -16]
    expect(mirror([2, 1])).to eq [1, 2, 1]
    expect(mirror([])).to eq []
  end
end
