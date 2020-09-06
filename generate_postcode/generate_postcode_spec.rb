require_relative './generate_postcode'

describe :generate_postcode do
  it 'returns correctly generated postcode' do
    postcodes = Array.new(5).map { generate_postcode }

    expect(postcodes.uniq.count).to eql(5)
    postcodes.each do |postcode|
      expect(postcode).to match(/^[A-Z]{2}\d \d[A-Z]{2}$/)
    end
  end
end
