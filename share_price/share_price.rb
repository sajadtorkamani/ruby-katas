def share_price(invested, changes)
  final_price = changes.reduce(invested) do |price, percent|
    price * ((100 + percent) / 100.0)
  end

  '%.2f' % final_price
end