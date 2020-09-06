# frozen_string_literal: true

def share_price(invested, changes)
  final_price = changes.reduce(invested) do |price, percent|
    price * ((100 + percent) / 100.0)
  end

  format('%<final_price>.2f', final_price: final_price)
end
