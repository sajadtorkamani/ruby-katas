def get_new_notes(salary, bills)
  money = salary - bills.sum
  money.positive? ? money / 5 : 0
end
