# frozen_string_literal: true

def year_days(year)
  num_days = leap_year?(year) ? 366 : 365

  "#{year} has #{num_days} days"
end

def leap_year?(year)
  return true if year.zero?

  is_century_year = (year % 100).zero?

  is_century_year ? (year % 400).zero? : (year % 4).zero?
end
