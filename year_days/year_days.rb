def year_days(year)
  num_days = leap_year?(year) ? 366 : 365

  "#{year} has #{num_days} days"
end

def leap_year?(year)
  return true if year == 0

  is_century_year = year % 100 == 0

  is_century_year ? year % 400 == 0 : year % 4 == 0
end