# frozen_string_literal: true

require_relative '../src/pillow'

xdescribe 'pillow' do
  it 'returns true if a pillow (B) is in the same index as a fridge (n)' do
    expect(pillow(['yF[CeAAiNihWEmKxJc/NRMVn', 'rMeIa\\KAfbjuLiTnAQxNw[XB'])).to be true
    expect(pillow(['inECnBMAA/u', 'ABAaIUOUx/M'])).to be true
    expect(pillow(%w[n B])).to be true

    expect(pillow(['EvH/KNikBiyxfeyK/miCMj', 'I/HwjnHlFLlahMOKNadps'])).to be false
    expect(pillow(['\\DjQ\\[zv]SpG]Z/[Qm\\eLL', 'amwZArsaGRmibriXBgTRZp'])).to be false
  end
end
