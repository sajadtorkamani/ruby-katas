# frozen_string_literal: true

require_relative '../src/previous_multiple_of_three'

describe 'previous_multiple_of_three' do
  it 'returns same number if number is already a multiple of three' do
    expect(previous_multiple_of_three(36)).to eq(36)
  end

  it 'keeps removing the last digit until it reaches a multiple of three' do
    expect(previous_multiple_of_three(1244)).to eq(12)
    expect(previous_multiple_of_three(952_406)).to eq(9)
  end

  it 'returns nil if a multiple of three is not possible' do
    expect(previous_multiple_of_three(1)).to be_nil
    expect(previous_multiple_of_three(25)).to be_nil
  end
end

describe 'remove_last_digit' do
  it 'removes last digit' do
    expect(remove_last_digit(1244)).to eq 124
    expect(remove_last_digit(124)).to eq 12
  end

  it 'returns nil when only one digit num is given' do
    expect(remove_last_digit(1)).to be_nil
  end
end
