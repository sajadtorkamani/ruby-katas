def is_very_even_number(num)
  digits = num.digits
  return num.even? if digits.count === 1

  digits_sum = num.digits.sum
  return digits_sum.even? if digits_sum.digits.count === 1

  is_very_even_number(digits_sum)
end
