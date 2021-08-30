# frozen_string_literal: true

require_relative '../src/spec_swap'

describe 'spec_swap' do
  it 'returns correct result' do
    expect(spec_swap("Hello world!", 11)).to eq "heLLO wORLd!"
    expect(spec_swap("gOOd MOrniNg", 7864)).to eq "GooD MorNIng"
    expect(spec_swap("how are you today?", 12345)).to eq "HOw are yoU TOdaY?"
    expect(spec_swap("the lord of the rings", 0)).to eq "the lord of the rings"

    expect(spec_swap("the quick broWn fox leapt over the fence", 9))
      .to eq "The QUicK BrowN foX LeaPT ovER thE FenCE"

    expect(spec_swap("eVerybody likes ice cReam", 85))
      .to eq "EVErYbODy LiKeS IcE creAM"

    expect(spec_swap("", 11345)).to eq ""
  end
end
