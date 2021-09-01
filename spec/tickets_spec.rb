# frozen_string_literal: true

require_relative '../src/tickets'

describe 'tickets' do
  it 'returns YES if no change is required at any transaction' do
    expect(tickets([25, 25, 25])).to eq 'YES'
  end

  describe 'fifty dollar bills' do
    it 'returns NO if change cannot be given for a fifty dollar bill' do
      expect(tickets([50, 25])).to eq 'NO'
      expect(tickets([25, 50, 50])).to eq 'NO'
    end

    it 'returns YES if change can be given to all fifty dollar bills' do
      expect(tickets([25, 50])).to eq 'YES'
      expect(tickets([25, 25, 50, 50])).to eq 'YES'
    end
  end

  describe 'hundred dollar bills' do
    it 'returns NO if change cannot be given for hundred dollar bills' do
      expect(tickets([100, 25])).to eq 'NO'
      expect(tickets([25, 50, 100])).to eq 'NO'
      expect(tickets([25, 25, 50, 100, 100])).to eq 'NO'
      expect(tickets([25, 25, 25, 100, 100])).to eq 'NO'
    end

    # 100

    it 'returns YES if change can be given for hundred dollars bills with a fifty and a twenty-five' do
      expect(tickets([25, 25, 50, 100])).to eq 'YES'
    end

    it 'returns YES if change can be given for hundred dollar bills with three twenty-five dollar bills' do
      expect(tickets([25, 25, 25, 100])).to eq 'YES'
    end
  end

  # it 'returns correct result' do
  # expect(tickets([25, 100])).to eq 'NO'
  # expect(tickets([25, 25, 50, 25, 25, 50, 100])).to eq 'YES'
  # end
end
