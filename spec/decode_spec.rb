# frozen_string_literal: true

require_relative '../src/decode'

# describe 'decode' do
# it 'decodes the given string' do
#   expect(decode('svool')).to eql 'hello'
#   expect(decode('r slkv mlylwb wvxlwvh gsrh nvhhztv')).to eql 'i hope nobody decodes this message'
# end
# end

describe 'decode_char' do
  it 'decodes a single char' do
    expect(decode_char('a')).to eq 'z'
    expect(decode_char('b')).to eq 'y'
    expect(decode_char('c')).to eq 'x'
    expect(decode_char('r')).to eq 'i'
  end

  it 'returns empty space if char is space' do
    expect(decode_char(' ')).to eq ' '
  end
end
