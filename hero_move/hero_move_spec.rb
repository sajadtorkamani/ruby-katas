# frozen_string_literal: true

require_relative 'hero_move'

describe Hero do
  it 'starts at correct position' do
    expect(described_class.new.position).to eq '00'
  end

  describe '#move' do
    let(:hero) { described_class.new }

    it 'adjusts position based on given direction' do
      hero.move('down')
      expect(hero.position).to eq '10'

      hero.move('right')
      expect(hero.position).to eq '11'

      hero.move('up')
      expect(hero.position).to eq '01'

      hero.move('right')
      expect(hero.position).to eq '02'
    end

    it 'throws error if move results in moving outside vertical plane' do
      expect { hero.move('up') }.to raise_error(/Invalid move/)
      expect(hero.position).to eq '00'
    end

    it 'throws error if move results in moving outside horizontal plane' do
      expect { hero.move('left') }.to raise_error(/Invalid move/)
      expect(hero.position).to eq '00'
    end
  end
end
