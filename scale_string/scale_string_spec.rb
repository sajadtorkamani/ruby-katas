# frozen_string_literal: true

require_relative './scale_string'

describe 'scale_string' do
  it 'scales the string' do
    input = "abcd\nefgh\nijkl\nmnop"
    expected = "aabbccdd\naabbccdd\naabbccdd\neeffgghh\neeffgghh\neeffgghh\niijjkkll\niijjkkll\niijjkkll\nmmnnoopp\nmmnnoopp\nmmnnoopp"

    expect(scale_string(input, 2, 3)).to eq expected
  end
end

describe 'horizontal_scale' do
  it 'returns correct result' do
    expect(horizontal_scale('abcd', 2)).to eq 'aabbccdd'
    expect(horizontal_scale('abcd', 3)).to eq 'aaabbbcccddd'
  end
end
