# frozen_string_literal: true

require_relative '../src/fizz_buzz_array'

describe 'fizz_buzz_array' do
  it 'returns correct result' do
    expect(fizz_buzz_custom[0]).to eq 1
    expect(fizz_buzz_custom[89]).to eq 'FizzBuzz'
    expect(fizz_buzz_custom[27]).to eq 28
  end
end
