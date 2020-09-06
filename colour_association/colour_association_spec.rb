require_relative 'colour_association'

describe :colour_association do
  it 'converts 2D array to hash' do
    expect(colour_association([['white', 'goodness'], ['blue', 'tranquility']])).to eql [
      { 'white' => 'goodness' }, { 'blue' => 'tranquility' }
    ]

    expect(colour_association([['red', 'energy'], ['yellow', 'creativity'], ['brown', 'friendly'], ['green', 'growth']])).to eql [
      { 'red' => 'energy' }, { 'yellow' => 'creativity' }, { 'brown' => 'friendly' }, { 'green' => 'growth' }
    ]

    expect(colour_association([['pink', 'compassion'], ['purple', 'ambition']])).to eql [
      { 'pink' => 'compassion' }, { 'purple' => 'ambition' }
    ]

    expect(colour_association([['gray', 'intelligence'], ['black', 'classy']])).to eql [
      { 'gray' => 'intelligence' }, { 'black' => 'classy' }
    ]

    expect(colour_association([['white', 'goodness'], ['blue', 'goodness']])).to eql [
      { 'white' => 'goodness' }, { 'blue' => 'goodness' }
    ]
  end
end
