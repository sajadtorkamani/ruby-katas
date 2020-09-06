# frozen_string_literal: true

require_relative 'num_obj'

describe 'num_obj' do
  it 'returns correct result' do
    expect(num_obj([118, 117, 120])).to eq [{ '118' => 'v' }, { '117' => 'u' }, { '120' => 'x' }]
    expect(num_obj([101, 121, 110, 113, 113, 103])).to eq [{ '101' => 'e' }, { '121' => 'y' }, { '110' => 'n' }, { '113' => 'q' }, { '113' => 'q' }, { '103' => 'g' }]
  end
end
