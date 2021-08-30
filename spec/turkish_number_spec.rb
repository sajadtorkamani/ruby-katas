# frozen_string_literal: true

require_relative '../src/turkish_number'

describe 'turkish_numbers' do
  it 'returns correct turkish string representation of number' do
    [[1, 'bir'], [8, 'sekiz'], [10, 'on'], [20, 'yirmi'], [13, 'on üç'], [27, 'yirmi yedi'], [38, 'otuz sekiz'],
     [77, 'yetmiş yedi'], [94, 'doksan dört']].each do |example|
      expect(turkish_number(example[0])).to eq example[1]
    end
  end
end
