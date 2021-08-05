# frozen_string_literal: true

def duplicates(arr)
  return [] if arr.nil? || arr.empty?

  arr.select { |v| arr.count(v) > 1 }.uniq
end
