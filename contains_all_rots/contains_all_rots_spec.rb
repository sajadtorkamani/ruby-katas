# frozen_string_literal

require_relative 'contains_all_rots'

describe 'contains_all_rots' do
  it 'returns true for empty strings' do
    expect(contains_all_rots('', [])).to be true
    expect(contains_all_rots('', ['bsjq', 'qbsj'])).to be true
  end

  it 'returns true if all rotations of string are included' do
    expect(contains_all_rots('bsjq', ['bsjq', 'qbsj', 'sjqb', 'twZNsslC', 'jqbs'])).to be true
  end

  it 'returns false if all rotations of string are not included' do
    expect(
      contains_all_rots(
        'XjYABhR',
        ['TzYxlgfnhf', 'yqVAuoLjMLy', 'BhRXjYA', 'YABhRXj', 'hRXjYAB', 'jYABhRX', 'XjYABhR', 'ABhRXjY']
      ))
      .to be false
  end

end

describe 'str_rotations' do
  it 'returns all rotations of string' do
    expect(str_rotations('tom')).to eq ['tom', 'omt', 'mto']
    expect(str_rotations('john')).to eq ['john', 'ohnj', 'hnjo', 'njoh']
    expect(str_rotations('bsjq')).to eq ['bsjq', 'sjqb', 'jqbs', 'qbsj']
  end
end