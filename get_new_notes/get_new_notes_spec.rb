# frozen_string_literal: true

require_relative 'get_new_notes'

describe 'get_new_notes' do
  it 'returns correct result' do
    expect(get_new_notes(2000, [500, 160, 400])).to eq 188
    expect(get_new_notes(1260, [500, 50, 100])).to eq 122
    expect(get_new_notes(3600, [1800, 350, 460, 500, 15])).to eq 95
    expect(get_new_notes(1995, [1500, 19, 44])).to eq 86
    expect(get_new_notes(10_000, [1800, 500, 1200, 655, 150])).to eq 1139
    expect(get_new_notes(5300, [1190, 1010, 1045, 55, 10, 19, 55])).to eq 383
    expect(get_new_notes(2000, [500, 495, 100, 900])).to eq 1
    expect(get_new_notes(2000, [500, 494, 100, 900])).to eq 1
  end

  it 'handles cases where no money is left over' do
    expect(get_new_notes(2300, [590, 1500, 45, 655, 150])).to eq 0
    expect(get_new_notes(2000, [500, 496, 100, 900])).to eq 0
  end
end
