require_relative './is_very_even_number'

describe 'is_very_even_number' do
  it 'returns correct result' do
    expect(is_very_even_number(0)).to eql true
    expect(is_very_even_number(4)).to eql true
    expect(is_very_even_number(5)).to eql false

    expect(is_very_even_number(12)).to eql false
    expect(is_very_even_number(222)).to eql true
#     expect(is_very_even_number(45)).to eql false
#     expect(is_very_even_number(4554)).to eql false
#     expect(is_very_even_number(1234)).to eql false
#     expect(is_very_even_number(88)).to eql false
#     expect(is_very_even_number(24)).to eql true
#     expect(is_very_even_number(400000220)).to eql true
  end
end
