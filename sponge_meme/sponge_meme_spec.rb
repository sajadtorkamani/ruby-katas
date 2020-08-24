require_relative 'sponge_meme'

describe :sponge_meme do
  it 'returns correct result' do
    expect(sponge_meme('stop Making spongebob Memes!')).to eq 'StOp mAkInG SpOnGeBoB MeMeS!'
  end
end