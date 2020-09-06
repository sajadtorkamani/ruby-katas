def get_order(order)
  menu = %w[Burger Fries Chicken Pizza Sandwich Onionrings Milkshake Coke]
  order_regex = /#{menu.join('|')}/i

  order
    .scan(order_regex)
    .map(&:capitalize)
    .sort { |a, b| menu.index(a) <=> menu.index(b) }
    .join(' ')
end
