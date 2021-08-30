# frozen_string_literal: true

require 'date'

FULL_MONTHS = [1, 3, 5, 7, 8, 10, 12].freeze

def extended_weekends(start_year, end_year)
  months = []

  start_year.upto(end_year) do |year|
    FULL_MONTHS.each do |month|
      date = Date.new(year, month, 1)
      months << date.strftime('%b') if date.strftime('%A') == 'Friday'
    end
  end

  [months.first, months.last, months.size]
end
