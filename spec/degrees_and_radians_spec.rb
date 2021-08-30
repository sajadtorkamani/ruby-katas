# frozen_string_literal: true

require_relative '../src/degrees_and_radians'

# rubocop:disable RSpec/FilePath
describe Math do
  describe '.degrees' do
    it 'converts radians to degrees' do
      expect(described_class.degrees(1)).to eq '57.3deg'
      expect(described_class.degrees(Math::PI)).to eq '180deg'
      expect(described_class.degrees(5)).to eq '286.48deg'
    end
  end

  describe '.radians' do
    it 'converts degrees to radians' do
      expect(described_class.radians(1)).to eq '0.02rad'
      expect(described_class.radians(5)).to eq '0.09rad'
      expect(described_class.radians(180)).to eq '3.14rad'
    end
  end
end
# rubocop:enable RSpec/FilePath
