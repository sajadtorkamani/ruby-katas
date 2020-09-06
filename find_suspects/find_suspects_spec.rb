# frozen_string_literal: true

require_relative './find_suspects'

describe 'find_suspects' do
  it 'returns nil if empty pockets' do
    pockets = {}
    expect(find_suspects(pockets, [1, 3])).to eql nil
  end

  it 'returns persons with at least one illegal between allowed items' do
    pockets = { meg: [1, 3], tom: [5, 3], jim: [1, 8] }
    expect(find_suspects(pockets, [1, 3])).to eql %i[tom jim]
  end

  it 'returns all with something in pockets if no allowed items' do
    pockets = { meg: [3], tom: [5] }
    expect(find_suspects(pockets, [])).to eql %i[meg tom]
  end

  it 'returns nil if all packets allowed' do
    pockets = { tom: [2], bob: [2], julia: [3], meg: [3] }
    expect(find_suspects(pockets, [2, 3])).to eql nil
  end

  it 'returns nil if all with empty pockets' do
    pockets = { julia: nil, meg: [] }
    expect(find_suspects(pockets, [1, 6])).to eql nil
  end
end
