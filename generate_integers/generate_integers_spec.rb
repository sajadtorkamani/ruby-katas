require_relative './generate_integers'

describe 'generate_integers' do
  it 'returns array of numbers from 0 to given integer' do
    expect(generate_integers(5)).to eq [0, 1, 2, 3, 4, 5]
  end
end
