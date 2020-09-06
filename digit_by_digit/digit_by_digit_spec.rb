# frozen_string_literal: true

require_relative 'digit_by_digit'

# rubocop:disable RSpec/FilePath
describe Num do
  it 'can create single-digit numbers' do
    expect(described_class.zero.to_i).to eq 0
    expect(described_class.one.to_i).to eq 1
    expect(described_class.two.to_i).to eq 2
    expect(described_class.three.to_i).to eq 3
    expect(described_class.four.to_i).to eq 4
    expect(described_class.five.to_i).to eq 5
    expect(described_class.six.to_i).to eq 6
    expect(described_class.seven.to_i).to eq 7
    expect(described_class.eight.to_i).to eq 8
    expect(described_class.nine.to_i).to eq 9
  end

  it 'can create multi-digit numbers' do
    expect(described_class.one.two.to_i).to eq 12
    expect(described_class.five.three.two.to_i).to eq 532
    expect(described_class.two.zero.two.one.to_i).to eq 2021
  end
end
# rubocop:enable RSpec/FilePath
