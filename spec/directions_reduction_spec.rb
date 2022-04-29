# frozen_string_literal: true

require_relative '../src/directions_reduction'

describe 'directions_reduction' do
  it 'removes redundant adjacent vertical directions' do
    expect(directions_reduction(%w[NORTH SOUTH])).to eq([])
    expect(directions_reduction(%w[SOUTH NORTH])).to eq([])
  end

  it 'removes redundant vertical directions accumulatively' do
    expect(directions_reduction(%w[NORTH SOUTH SOUTH EAST WEST NORTH WEST]))
      .to eq(['WEST'])
  end

  it 'removes redundant adjacent horizontal directions' do
    expect(directions_reduction(%w[EAST WEST])).to eq([])
    expect(directions_reduction(%w[WEST EAST])).to eq([])
  end

  it 'foo' do
    expect(directions_reduction(%w[NORTH WEST SOUTH EAST]))
      .to eq(%w[NORTH WEST SOUTH EAST])
  end
end
