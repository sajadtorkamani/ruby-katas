# frozen_string_literal: true

require_relative 'valid_spacing'

describe 'valid_spacing' do
  it "returns false if there's a leading space" do
    expect(valid_spacing(' Hello world')).to be false
    expect(valid_spacing('  Hello world')).to be false
  end

  it "returns false if there's a trailing space" do
    expect(valid_spacing('Hello world ')).to be false
    expect(valid_spacing('Hello world  ')).to be false
  end

  it 'returns false if there are multiple spaces between words' do
    expect(valid_spacing('Hello  world')).to be false
    expect(valid_spacing('Hello    world')).to be false
  end

  it 'returns true for other valid spacing' do
    ['Hello world', 'Hello',  'Helloworld', ''].each do |str|
      expect(valid_spacing(str)).to be true
    end
  end
end
