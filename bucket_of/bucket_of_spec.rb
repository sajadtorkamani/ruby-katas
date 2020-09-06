require_relative 'bucket_of'

describe 'bucket_of' do
  it 'handles water violations' do
    expect(bucket_of('water')).to eq 'water'
    expect(bucket_of('wet')).to eq 'water'
    expect(bucket_of('wash')).to eq 'water'
    expect(bucket_of('WASh')).to eq 'water'
    expect(bucket_of('washer')).to eq 'water'
  end

  it 'handles slime violations' do
    expect(bucket_of('slime')).to eq 'slime'
    expect(bucket_of("I don't know")).to eq 'slime'
  end

  it 'handles sludge violations' do
    expect(bucket_of("Will I get wet? I don't know.")).to eq 'sludge'
  end

  it 'handles non-violation' do
    expect(bucket_of('This should be safe.')).to eq 'air'
  end
end
