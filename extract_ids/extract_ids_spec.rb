# frozen_string_literal: true

require_relative 'extract_ids'

describe 'extract_ids' do
  it 'returns list of ids from data set' do
    data = {
      id: 1,
      items: [
        { id: 3 },
        { id: 4, items: [
          { id: 6 },
          { id: 7 },
          { id: 8, items: [{ id: 9 }] }
        ] }
      ]
    }

    expect(extract_ids(data)).to eq [1, 3, 4, 6, 7, 8, 9]
  end
end
