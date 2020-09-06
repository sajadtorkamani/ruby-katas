require_relative './max_consonant_substr'

describe :max_consonant_substr do
  it 'returns correct result' do
    expect(solve('strength')).to eq 57
    expect(solve('zodiac')).to eq 26
    expect(solve('chruschtschov')).to eq 80
    expect(solve('khrushchev')).to eq 38
    expect(solve('catchphrase')).to eq 73
    expect(solve('twelfthstreet')).to eq 103
    expect(solve('mischtschenkoana')).to eq 80
  end
end
