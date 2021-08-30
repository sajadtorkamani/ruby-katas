# frozen_string_literal: true

class Array
  def zip(arr, &block)
    length = [self, arr].map(&:length).min

    self[0...length].map.with_index do |item, index|
      block.call(item, arr[index])
    end
  end
end
