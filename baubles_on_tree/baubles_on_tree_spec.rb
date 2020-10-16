# frozen_string_literal: true

require_relative 'baubles_on_tree'

describe 'baubles_on_tree' do
  it 'returns correct result' do
    expect(baubles_on_tree(5, 5)).to eq [1, 1, 1, 1, 1]
    expect(baubles_on_tree(6, 5)).to eq [2, 1, 1, 1, 1]
    expect(baubles_on_tree(50, 9)).to eq [6, 6, 6, 6, 6, 5, 5, 5, 5]
    expect(baubles_on_tree(0, 10)).to eq [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    expect(baubles_on_tree(5, 0)).to eq 'Grandma, we will have to buy a Christmas tree first!'
  end
end
