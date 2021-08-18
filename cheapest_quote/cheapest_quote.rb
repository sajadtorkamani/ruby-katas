# frozen_string_literal: true

# Not the cleanest!
def cheapest_quote(num_newspapers)
  num_forties, remainder = calculate_num_bundles(num_newspapers, 40)
  num_twenties, remainder = calculate_num_bundles(remainder, 20)
  num_tens, remainder = calculate_num_bundles(remainder, 10)
  num_fives, remainder = calculate_num_bundles(remainder, 5)
  num_ones = remainder / 1

  quote = (num_forties * 3.85) + (num_twenties * 1.93) + (num_tens * 0.97) + (num_fives * 0.49) + (num_ones * 0.10)
  quote.round(2)
end

def calculate_num_bundles(quantity, bundle_size)
  return [0, quantity] if quantity < bundle_size

  num_bundles = quantity / bundle_size
  remainder = quantity % bundle_size

  [num_bundles, remainder]
end
