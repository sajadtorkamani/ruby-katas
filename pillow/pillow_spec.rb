# frozen_string_literal: true

require_relative 'pillow'

describe 'pillow' do
  it 'returns true if a pillow (B) is in the same index as a fridge (n)' do
    expect(pillow(['yF[CeAAiNihWEmKxJc/NRMVn', 'rMeIa\\KAfbjuLiTnAQxNw[XB'])).to eq true
    expect(pillow(['inECnBMAA/u', 'ABAaIUOUx/M'])).to eq true
    expect(pillow(%w[n B])).to eq true

    expect(pillow(['EvH/KNikBiyxfeyK/miCMj', 'I/HwjnHlFLlahMOKNadps'])).to eq false
    expect(pillow(['\\DjQ\\[zv]SpG]Z/[Qm\\eLL', 'amwZArsaGRmibriXBgTRZp'])).to eq false
  end
end
