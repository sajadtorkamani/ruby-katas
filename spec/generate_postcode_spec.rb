# frozen_string_literal: true

require_relative '../src/generate_postcode'

describe 'generate_postcode' do
  it 'returns correctly generated postcode' do
    postcodes = Array.new(5).map { generate_postcode }

    expect(postcodes.uniq.count).to be(5)
    postcodes.each do |postcode| # rubocop:disable RSpec/IteratedExpectation
      expect(postcode).to match(/^[A-Z]{2}\d \d[A-Z]{2}$/)
    end
  end
end
