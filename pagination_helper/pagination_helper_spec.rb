# frozen_string_literal: true

require_relative 'pagination_helper'

describe PaginationHelper do
  let(:helper) { described_class.new(%w[a b c d e f], 4) }

  describe '#new' do
    it 'sets up the object correctly' do
      expect(helper.collection).to eq %w[a b c d e f]
      expect(helper.page_size).to eq 4
    end
  end

  describe '#page_count' do
    it 'returns the number of pages' do
      expect(helper.page_count).to eq 2
    end
  end

  describe '#item_count' do
    it 'returns the number of items in the entire collection' do
      expect(helper.item_count).to eq 6
    end
  end

  describe '#page_item_count' do
    it 'returns number of items in the given page' do
      expect(helper.page_item_count(0)).to eq 4
      expect(helper.page_item_count(1)).to eq 2
    end

    it 'returns -1 for out of range page indices' do
      expect(helper.page_item_count(2)).to eq(-1)
    end
  end

  describe '#page_index' do
    it 'returns the page that an item index belongs' do
      expect(helper.page_index(2)).to eq 0
      expect(helper.page_index(5)).to eq 1
    end

    it 'returns -1 if item index is out of range' do
      expect(helper.page_index(8)).to eq(-1)
      expect(helper.page_index(20)).to eq(-1)
      expect(helper.page_index(-10)).to eq(-1)
    end
  end
end
