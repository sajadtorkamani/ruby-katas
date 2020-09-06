# frozen_string_literal: true

require_relative './negation_value'

describe 'negation_value' do
  it 'applies the list of negations to the given value' do
    expect(negation_value('!', false)).to eq true
    expect(negation_value('!', true)).to eq false
    expect(negation_value('!!!', [])).to eq false

    expect(negation_value('', 0)).to eq true
    expect(negation_value('', [])).to eq true
  end
end
