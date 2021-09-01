# frozen_string_literal: true

class Array
  def delete_first(item, count = 1)
    count.times { delete_at(index(item) || length) }
  end
end

def tickets(bills_given)
  bills = { twenty_five: 25, fifty: 50, hundred: 100 }
  register = []

  bills_given.each do |bill|
    # No change required, move on to next person
    if bill == bills[:twenty_five]
      register << bill
      next
    end

    # Change required for fifty dollar bill
    if bill == bills[:fifty]
      return 'NO' unless register.include?(bills[:twenty_five])
      register << bill
      register.delete_first(bills[:twenty_five])
      next
    end

    # Change required for hundred dollar bill
    # Need $75 change. This can obtained in two ways:
    #   - 50, 25
    #   - 25, 25, 25
    if bill == bills[:hundred]
      has_fifty_and_twenty_five = register.include?(bills[:fifty]) && register.include?(bills[:twenty_five])
      has_three_twenty_fives = register.count(bills[:twenty_five]) == 3

      if has_fifty_and_twenty_five
        register.delete_first(bills[:fifty])
        register.delete_first(bills[:twenty_five])
        next
      end

      if has_three_twenty_fives
        register.delete_first(bills[:twenty_five], 3)
        next
      end

      return 'NO'
    end
  end

  'YES'
end