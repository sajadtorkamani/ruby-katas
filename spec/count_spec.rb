# frozen_string_literal: true

require_relative '../src/count'

describe 'count' do
  it 'returns number of items for which given block returns truthy value' do
    expect(count([2, 3, 4, 5, 6], &:even?)).to be 3
    expect(count([2, 3, 4, 5, 6], &:odd?)).to be 2
    expect(count([5, 10, 15, 20]) { |x| x == 5 }).to be 1
  end
end
