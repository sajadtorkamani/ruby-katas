def find_suspects(pockets, allowed_items)
  return nil if pockets.empty?

  suspects = pockets.select do |_person, items|
    items&.any? { |item| allowed_items.include?(item) === false }
  end

  suspects.count.positive? ? suspects.keys : nil
end
