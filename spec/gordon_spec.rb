# frozen_string_literal: true

require_relative '../src/gordon'

describe 'gordon' do
  it 'converts string into a gordon string!' do
    expect(gordon('are you stu pid')).to eq '@R*!!!! Y**!!!! ST*!!!! P*D!!!!'
    expect(gordon('i am a chef')).to eq '*!!!! @M!!!! @!!!! CH*F!!!!'
    expect(gordon('dont you talk tome')).to eq 'D*NT!!!! Y**!!!! T@LK!!!! T*M*!!!!'
    expect(gordon('how dare you feck')).to eq 'H*W!!!! D@R*!!!! Y**!!!! F*CK!!!!'
  end
end
