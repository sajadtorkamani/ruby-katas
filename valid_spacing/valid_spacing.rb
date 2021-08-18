# frozen_string_literal: true

def valid_spacing(str)
  return false if str.start_with? ' '
  return false if str.end_with? ' '
  return false if str.scan(/\s{2,}/).count.positive?

  true
end
