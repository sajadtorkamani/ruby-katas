# frozen_string_literal: true

def duplicates(arr)
  return [] if arr.nil? || arr.empty?

  traversed = [arr[0]]
  duplicate_results = []

  arr[1..-1].each do |item|
    if traversed.include?(item)
      duplicate_results << item
    else
      traversed << item
    end
  end

  duplicate_results.uniq
end
