# frozen_string_literal: true

# rubocop:disable Style/StringConcatenation
def gordon(str)
  str.split(' ').map do |word|
    word
      .upcase
      .gsub(/A/, '@')
      .gsub(/[EIOU]/, '*') + '!!!!'
  end.join(' ')
end
# rubocop:enable Style/StringConcatenation
