# frozen_string_literal: true

require_relative '../src/evenator'

describe 'evenator' do
  it 'returns correct result' do
    expect(evenator('I got a hole in 1!')).to eq 'II gott aa hole in 11'
    expect(evenator('evenn')).to eq 'evennn'
    expect(evenator('even odd!')).to eq 'even oddd'
    expect(evenator('eve odd.')).to eq 'evee oddd'
    expect(evenator('f')).to eq 'ff'

    # expect(evenator('tHiS sEnTeNcE iS eVeN.')).to eq 'tHiS sEnTeNcE iS eVeN'
    # expect(evenator('even')).to eq 'even'
    # expect(evenator('even od!')).to eq 'even od'
    # expect(evenator('even oddd.')).to eq 'even oddd'
    # expect(evenator('underscore is not considered a word..in this case,')).to eq 'underscore is nott considered aa wordin this case'
    # expect(evenator('')).to eq ''
  end
end
