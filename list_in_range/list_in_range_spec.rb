require_relative './list_in_range'

describe :list_in_range do
  it 'returns correct result' do
    expect(
      list_in_range({ 'Zero' => 0, 'Three' => 3, 'One' => 1, 'Six' => 6, 'Eleven' => 11 }, (1..10))
    ).to eql('One (1), Three (3), Six (6)')
  end
end