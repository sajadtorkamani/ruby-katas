# frozen_string_literal: true

require_relative 'decode_barksdale'

xdescribe 'decode_barksdale' do
  it 'decodes phone number' do
    expect(decode('4103432323')).to eq '6957678787'
    expect(decode('4103438970')).to eq '6957672135'
    expect(decode('4104305768')).to eq '6956750342'
    expect(decode('4102204351')).to eq '6958856709'
    expect(decode('4107056043')).to eq '6953504567'
  end
end
