# frozen_string_literal: true

# rubocop:disable Metrics/MethodLength
def fizz_buzz_custom(str1 = 'Fizz', str2 = 'Buzz', num1 = 3, num2 = 5)
  (1..100).to_a.map do |num|
    if (num % num1).zero? && (num % num2).zero?
      str1 + str2
    elsif (num % num1).zero?
      str1
    elsif (num % num2).zero?
      str2
    else
      num
    end
  end
end
# rubocop:enable Metrics/MethodLength
