# frozen_string_literal: true

require_relative 'gym_slang'

describe 'gym_slang' do
  it 'replaces certain words with slang version' do
    expect(gym_slang('When I miss few days of gym')).to eq 'When I miss few days of gym'
    expect(gym_slang('Squad probably think I am fake')).to eq "Squad prolly think I'm fake"
    expect(gym_slang('Whole squad probably bigger than me now')).to eq 'Whole squad prolly bigger than me now'
    expect(gym_slang('No selfie to post on Instagram either')).to eq 'No selfie to post on Insta either'
    expect(gym_slang('Gym crush probably found someone else')).to eq 'Gym crush prolly found someone else'
    expect(gym_slang('What if I die fat')).to eq 'What if I die fat'
    expect(gym_slang('What if I do not fit in my clothes now')).to eq "What if I don't fit in my clothes now"
    expect(gym_slang('Going to feel like a new gym member')).to eq 'Gonna feel like a new gym member'
    expect(gym_slang('wait what was my lock combination')).to eq 'wait what was my lock combo'
    expect(gym_slang('that skinny hoe can probably outlift me now')).to eq 'that skinny hoe can prolly outlift me now'

    expect(gym_slang('probably Probably')).to eq 'prolly Prolly'
    expect(gym_slang('i am I am')).to eq "i'm I'm"
    expect(gym_slang('instagram Instagram')).to eq 'insta Insta'
    expect(gym_slang('do not Do not')).to eq "don't Don't"
    expect(gym_slang('going to Going to')).to eq 'gonna Gonna'
    expect(gym_slang('combination Combination')).to eq 'combo Combo'

    expect(gym_slang('probably Probably probably Probably probably Probably probably Probably probably Probably'))
      .to eq 'prolly Prolly prolly Prolly prolly Prolly prolly Prolly prolly Prolly'
    expect(gym_slang('i am I am i am I am i am I am i am I am i am I am i am I am'))
      .to eq "i'm I'm i'm I'm i'm I'm i'm I'm i'm I'm i'm I'm"
    expect(gym_slang('instagram Instagram instagram Instagram instagram Instagram instagram Instagram instagram Instagram'))
      .to eq 'insta Insta insta Insta insta Insta insta Insta insta Insta'
    expect(gym_slang('do not Do not do not Do not do not Do not do not Do not'))
      .to eq "don't Don't don't Don't don't Don't don't Don't"
    expect(gym_slang('Going to going to Going to Going to going to Going to Going to going to Going to'))
      .to eq 'Gonna gonna Gonna Gonna gonna Gonna Gonna gonna Gonna'
    expect(gym_slang('combination combination Combination combination Combination'))
      .to eq 'combo combo Combo combo Combo'
  end
end
