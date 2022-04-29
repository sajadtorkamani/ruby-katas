# frozen_string_literal: true

require_relative '../src/alternating_split'

describe 'encrypt' do
  it 'encrypts string using the alternating split encryption' do
    expect(encrypt('This is a test!', 1)).to eq 'hsi  etTi sats!'
    expect(encrypt('This is a test!', 2)).to eq 's eT ashi tist!'
    expect(encrypt('This is a test!', 3)).to eq ' Tah itse sits!'
    expect(encrypt('This is a test!', 4)).to eq 'This is a test!'
    expect(encrypt('This kata is very interesting!', 1)).to eq 'hskt svr neetn!Ti aai eyitrsig'
  end

  it 'returns nil if given nil' do
    expect(encrypt(nil, 1)).to be_nil
  end

  it 'returns empty string if given empty string' do
    expect(encrypt('', 1)).to eq ''
  end

  it 'returns original string if given 0 or negative iteration' do
    expect(encrypt('This is a test!', 0)).to eq 'This is a test!'
    expect(encrypt('This is a test!', -1)).to eq 'This is a test!'
  end
end

describe 'decrypt' do
  it 'decrypts a string that was encrypted with the alternating split encryption' do
    expect(decrypt('hsi  etTi sats!', 1)).to eq 'This is a test!'
    expect(decrypt('s eT ashi tist!', 2)).to eq 'This is a test!'
    expect(decrypt(' Tah itse sits!', 3)).to eq 'This is a test!'
    expect(decrypt('This is a test!', 4)).to eq 'This is a test!'
    expect(decrypt('hskt svr neetn!Ti aai eyitrsig', 1)).to eq 'This kata is very interesting!'
  end

  it 'returns nil if given nil' do
    expect(decrypt(nil, 1)).to be_nil
  end

  it 'returns empty string if given empty string' do
    expect(decrypt('', 0)).to eq ''
  end

  it 'returns original string if given 0 or negative iterationn' do
    expect(decrypt('This is a test!', 0)).to eq 'This is a test!'
    expect(decrypt('This is a test!', -1)).to eq 'This is a test!'
  end
end
