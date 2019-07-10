require_relative './contains_all'

describe 'Array#contains_all?' do
  it 'returns correct result' do
    items = (1..5).to_a

    expect(items.contains_all?([1, 2, 3, 4, 5])).to eql true
    expect(items.contains_all?([12, 15])).to eql false
    expect(items.contains_all?([9, 2, 5, 4, 10])).to eql false
  end
end
