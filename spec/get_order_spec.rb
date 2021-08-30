# frozen_string_literal: true

require_relative '../src/get_order'

describe 'get_order' do
  it 'returns correctly formatted result' do
    expect(get_order('milkshakepizzachickenfriescokeburgerpizzasandwichmilkshakepizza'))
      .to eq 'Burger Fries Chicken Pizza Pizza Pizza Sandwich Milkshake Milkshake Coke'

    expect(get_order('pizzachickenfriesburgercokemilkshakefriessandwich'))
      .to eq 'Burger Fries Fries Chicken Pizza Sandwich Milkshake Coke'
  end
end
