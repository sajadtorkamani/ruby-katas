# frozen_string_literal: true

require_relative '../src/directions_reduction'

describe 'directions_reduction' do
  it 'removes redundant adjacent vertical directions' do
    expect(directions_reduction(['NORTH', 'SOUTH'])).to eq([])
    expect(directions_reduction(['SOUTH', 'NORTH'])).to eq([])
  end

  it 'removes redundant vertical directions accumulatively' do
    expect(directions_reduction(['NORTH', 'SOUTH', 'SOUTH', 'EAST', 'WEST', 'NORTH', 'WEST']))
      .to eq(['WEST'])
  end

  it 'removes redundant adjacent horizontal directions' do
    expect(directions_reduction(['EAST', 'WEST'])).to eq([])
    expect(directions_reduction(['WEST', 'EAST'])).to eq([])
  end

  it 'foo' do
    expect(directions_reduction(['NORTH', 'WEST', 'SOUTH', 'EAST']))
      .to eq(['NORTH', 'WEST', 'SOUTH', 'EAST'])
  end
end