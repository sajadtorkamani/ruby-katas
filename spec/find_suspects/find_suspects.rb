def find_suspects(pockets, allowed_items)
  return nil if pockets.empty?

  suspects = pockets.select do |person, items|
    items && items.any? { |item| allowed_items.include?(item) === false }
  end

  suspects.count > 0 ? suspects.keys : nil
end
