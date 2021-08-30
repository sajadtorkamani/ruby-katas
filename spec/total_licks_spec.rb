# frozen_string_literal: true

require_relative '../src/total_licks'

describe 'total_licks' do
  it 'handles simple case' do
    expect(total_licks({ 'freezing temps' => 10, 'clear skies' => -2 }))
      .to eq 'It took 260 licks to get to the tootsie roll center of a tootsie pop. The toughest challenge was '\
              'freezing temps.'

    expect(total_licks({ 'dragons' => 100, 'evil wizards' => 110, 'trolls' => 50 }))
      .to eq 'It took 512 licks to get to the tootsie roll center of a tootsie pop. The toughest challenge was '\
            'evil wizards.'
  end

  it 'handles cases without negative challenges' do
    expect(total_licks({ 'happiness' => -5, 'clear skies' => -2 }))
      .to eq 'It took 245 licks to get to the tootsie roll center of a tootsie pop.'

    expect(total_licks({ 'white magic' => -250 }))
      .to eq 'It took 2 licks to get to the tootsie roll center of a tootsie pop.'
  end

  it 'handles cases without any challenges' do
    expect(total_licks({}))
      .to eq 'It took 252 licks to get to the tootsie roll center of a tootsie pop.'
  end
end
