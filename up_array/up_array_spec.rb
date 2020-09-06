# frozen_string_literal: true

require_relative './up_array'

describe :up_array do
  it 'handles invalid inputs' do
    expect(up_array([])).to be_nil
    expect(up_array([1, -2])).to be_nil
    expect(up_array([1, 22])).to be_nil
  end

  it 'handles valid inputs' do
    expect(up_array([2, 3, 9])).to eq [2, 4, 0]
    expect(up_array([4, 3, 2, 5])).to eq [4, 3, 2, 6]
  end
end
