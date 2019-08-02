def fizz_buzz_custom(str1 = 'Fizz', str2 = 'Buzz', num1 = 3, num2 = 5)
  (1..100).to_a.map do |num|
    case true
      when num % num1 === 0 && num % num2 === 0 then (str1 + str2)
      when num % num1 === 0 then str1
      when num % num2 === 0 then str2
      else num
    end
  end
end