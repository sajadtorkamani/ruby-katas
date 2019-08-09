require_relative './count'

describe 'count' do
  it 'returns number of items for which given block returns truthy value' do
    expect(count([2, 3, 4, 5, 6]) { |x| x.even? }).to eql 3
    expect(count([2, 3, 4, 5, 6]) { |x| x.odd? }).to eql 2
    expect(count([5, 10, 15, 20]) { |x| x == 5 }).to eql 1
  end
end


