# frozen_string_literal: true

def string_match(str1, str2)
  return true if str1 == '*' || str1 == str2
  return str1 == str2 unless str1.include?('*')
  return false if str1.tr('*', '').size > str2.size

  a_start, a_end = str1.split('*')

  str2.start_with?(a_start) && str2.end_with?(a_end || '')
end
