# frozen_string_literal: true

# frozen_string_literal

require_relative '../src/contains_all_rots'

describe 'contains_all_rots' do
  it 'returns true for empty strings' do
    expect(contains_all_rots('', [])).to be true
    expect(contains_all_rots('', %w[bsjq qbsj])).to be true
  end

  it 'returns true if all rotations of string are included' do
    expect(contains_all_rots('bsjq', %w[bsjq qbsj sjqb twZNsslC jqbs])).to be true
  end

  it 'returns false if all rotations of string are not included' do
    expect(
      contains_all_rots(
        'XjYABhR',
        %w[TzYxlgfnhf yqVAuoLjMLy BhRXjYA YABhRXj hRXjYAB jYABhRX XjYABhR ABhRXjY]
      )
    )
      .to be false
  end
end

describe 'str_rotations' do
  it 'returns all rotations of string' do
    expect(str_rotations('tom')).to eq %w[tom omt mto]
    expect(str_rotations('john')).to eq %w[john ohnj hnjo njoh]
    expect(str_rotations('bsjq')).to eq %w[bsjq sjqb jqbs qbsj]
  end
end
