# frozen_string_literal: true

def atm(withdrawal_amount)
  notes_available = [500, 200, 100, 50, 20, 10]
  num_notes = 0

  notes_available.each do |note_amount|
    note_count = (withdrawal_amount / note_amount)

    if note_count >= 1
      num_notes += note_count
      withdrawal_amount = withdrawal_amount % note_amount
    end
  end

  withdrawal_amount.zero? ? num_notes : -1
end
