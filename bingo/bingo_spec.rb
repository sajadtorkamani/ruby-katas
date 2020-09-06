require_relative './bingo'

describe 'bingo' do
  it 'returns correct result' do
    expect(bingo([['ABC', 65], ['HGR', 74], ['BYHT', 74]], 2)).to eq  'Loser!'
    expect(bingo([['ABC', 65], ['HGR', 74], ['BYHT', 74]], 1)).to eq  'Winner!'
    expect(bingo([['HGTYRE', 74], ['BE', 66], ['JKTY', 74]], 3)).to eq 'Loser!'
  end
end
