# frozen_string_literal: true

require_relative 'decipher_this'

describe 'decipher_this' do
  it 'deciphers the given string' do
    expect(decipher_this('72olle 103doo 100ya')).to eq 'Hello good day'
    expect(decipher_this('65 119esi 111dl 111lw 108dvei 105n 97n 111ka')).to eq 'A wise old owl lived in an oak'
    expect(decipher_this('84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp')).to eq 'The more he saw the less he spoke'
    expect(decipher_this('84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare'))
      .to eq 'The less he spoke the more he heard'
    expect(decipher_this('87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri'))
      .to eq 'Why can we not all be like that wise old bird'
    expect(decipher_this('84kanh 121uo 80roti 102ro 97ll 121ruo 104ple')).to eq 'Thank you Piotr for all your help'
  end
end

describe 'decipher_word' do
  it 'deciphers the given word' do
    expect(decipher_word('72olle')).to eq 'Hello'
    expect(decipher_word('103doo')).to eq 'good'
  end

  it 'handles words without letters' do
    expect(decipher_word('65')).to eq 'A'
  end
end
