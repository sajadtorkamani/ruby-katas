require_relative './line_types'

describe 'line_types' do
  it 'returns correct result' do
    input = ['This is an alpha line', 'Beta line next!', 'Another AlphA', 'I have no idea', nil]

    expect(line_types(input)).to eql [ :alpha, :beta, :alpha, :unknown, :unknown ]
  end
end