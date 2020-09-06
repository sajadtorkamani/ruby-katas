# frozen_string_literal: true

class PaginationHelper
  attr_reader :collection, :page_size

  def initialize(collection, page_size)
    @collection = collection
    @page_size = page_size
  end

  def page_count
    item_count.fdiv(page_size).ceil
  end

  def item_count
    collection.count
  end

  def page_item_count(page_index)
    start_index = page_index * page_size
    end_index = (page_index + 1) * page_size

    return -1 if start_index >= item_count

    collection[start_index...end_index].count
  end

  def page_index(item_index)
    item_index >= item_count || item_index.negative? ? -1 : item_index / page_size
  end
end
