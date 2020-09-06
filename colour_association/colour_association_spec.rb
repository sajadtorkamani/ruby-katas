require_relative 'colour_association'

describe :colour_association do
  it 'converts 2D array to hash' do
    expect(colour_association([%w[white goodness], %w[blue tranquility]])).to eql [
      { 'white' => 'goodness' }, { 'blue' => 'tranquility' }
    ]

    expect(colour_association([%w[red energy], %w[yellow creativity], %w[brown friendly], %w[green growth]])).to eql [
      { 'red' => 'energy' }, { 'yellow' => 'creativity' }, { 'brown' => 'friendly' }, { 'green' => 'growth' }
    ]

    expect(colour_association([%w[pink compassion], %w[purple ambition]])).to eql [
      { 'pink' => 'compassion' }, { 'purple' => 'ambition' }
    ]

    expect(colour_association([%w[gray intelligence], %w[black classy]])).to eql [
      { 'gray' => 'intelligence' }, { 'black' => 'classy' }
    ]

    expect(colour_association([%w[white goodness], %w[blue goodness]])).to eql [
      { 'white' => 'goodness' }, { 'blue' => 'goodness' }
    ]
  end
end
