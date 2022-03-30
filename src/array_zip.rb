# frozen_string_literal: true

class Array
  def zip(arr, &block)
    length = [self, arr].map(&:length).min

    self[0...length].map.with_index do |item, row_index|
      block.call(item, arr[row_index])
    end
  end
end
