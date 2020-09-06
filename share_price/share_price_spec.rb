# frozen_string_literal: true

require_relative 'share_price'

describe :share_price do
  it 'returns the final share price after all changes have been applied' do
    expect(share_price(100, [-50, 50])).to eql '75.00'
    expect(share_price(100, [-50, 100])).to eql '100.00'
    expect(share_price(100, [-20, 30])).to eql '104.00'
    expect(share_price(100, [])).to eql '100.00'
    expect(share_price(1000, [0, 2, 3, 6])).to eql '1113.64'
  end
end
