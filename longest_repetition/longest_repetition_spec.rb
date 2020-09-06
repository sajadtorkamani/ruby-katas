require_relative 'longest_repetition'

describe :longest_repetition do
  it 'handles cases where there is a single char with longest repetition' do
    expect(longest_repetition('aaaabb')).to eq ['a', 4]
    expect(longest_repetition('bbbaaabaaaa')).to eq ['a', 4]
    expect(longest_repetition('cbdeuuu900')).to eq ['u', 3]
    expect(longest_repetition('abbbbb')).to eq ['b', 5]
  end

  it 'handles cases of two or more chars with same repetition length' do
    expect(longest_repetition('aabb')).to eq ['a', 2]
    expect(longest_repetition('ba')).to eq ['b', 1]
    expect(longest_repetition('aaabbcccddd')).to eq ['a', 3]
  end

  it 'handles empty strings' do
    expect(longest_repetition('')).to eq ['', 0]
  end
end
