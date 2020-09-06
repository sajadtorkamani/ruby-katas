# frozen_string_literal: true

require_relative './array_invoke'

class Item
  attr_accessor :name

  def initialize(name = 'John')
    @name = name
  end

  def update(arg1, arg2)
    @arg1 = arg1
    @arg2 = arg2

    'updated'
  end
end

describe 'Array#invoke' do
  it 'handles simple case without block' do
    items = [Item.new, 'foo', Item.new]

    result = items.invoke(:update, 'foo', 'bar')

    expect(result).to eq %w[updated updated]
  end

  it 'handles blocks' do
    items = [Item.new('John'), Item.new('Bob'), Item.new('Alice')]

    result = items.invoke(:update, 'foo', 'bar') { |item| item.name === 'Alice' }

    expect(result).to eq ['updated'] # Only once Alice
  end
end
