# frozen_string_literal: true

require_relative 'filter_even_length_words'

describe 'filter_even_length_words' do
  it 'filters array of words to return only words that have an even number of characters' do
    expect(filter_even_length_words(%w[Hello World])).to eq []
    expect(filter_even_length_words(%w[One Two Three Four])).to eq ['Four']
  end
end
