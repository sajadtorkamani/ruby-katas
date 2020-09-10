# frozen_string_literal: true

require_relative 'sort_by_last_char'

describe 'sort_by_last_char' do
  it 'sorts array by last character of each element' do
    expect(sort_by_last_char(%w[acvd bcc])).to eq %w[bcc acvd]
    # expect(sort_by_last_char(['asdf', 'asdf', 14, '13'])).to eq ['13', 14, 'asdf', 'asdf']
  end

  context 'when items has the same last character' do
    it 'keeps items in same order' do
      expect(sort_by_last_char(%w[asdf asdf])).to eq %w[asdf asdf]
    end
  end

  it 'converts numeric elements to strings before sorting' do
    expect(sort_by_last_char(['asdf', 'asdf', 14, '13'])).to eq ['13', 14, 'asdf', 'asdf']
  end
end
