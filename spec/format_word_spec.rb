# frozen_string_literal: true

require_relative '../src/format_words'

RSpec.describe 'format_words' do
  it 'returns empty string if words is nil or empty' do
    expect(format_words(nil)).to eq ''
    expect(format_words([])).to eq ''
  end

  it 'handles three or more words' do
    expect(format_words(%w[foo bar baz])).to eq 'foo, bar and baz'
    expect(format_words(%w[foo bar baz bang])).to eq 'foo, bar, baz and bang'
  end

  it 'handles two words' do
    expect(format_words(%w[foo bar])).to eq 'foo and bar'
  end

  it 'handles single word' do
    expect(format_words(['foo'])).to eq 'foo'
  end

  it 'ignores empty elements' do
    expect(format_words(['foo', 'bar', '', 'baz'])).to eq 'foo, bar and baz'
  end
end
