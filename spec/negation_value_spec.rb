# frozen_string_literal: true

require_relative '../src/negation_value'

describe 'negation_value' do
  it 'applies the list of negations to the given value' do
    expect(negation_value('!', false)).to be true
    expect(negation_value('!', true)).to be false
    expect(negation_value('!!!', [])).to be false

    expect(negation_value('', 0)).to be true
    expect(negation_value('', [])).to be true
  end
end
