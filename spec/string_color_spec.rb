# frozen_string_literal: true

require_relative '../src/string_color'

describe 'string_color' do
  it 'returns correct result' do
    expect(string_color('Jack')).to eq '79CAE5'
    expect(string_color('John Doe')).to eq 'C70033'
    expect(string_color('CodeWars')).to eq '182892'
    expect(string_color('X')).to eq nil
  end
end
