# frozen_string_literal: true

CHANGE = { 'penny' => 0.01, 'nickel' => 0.05, 'dime' => 0.1, 'quarter' => 0.25, 'dollar' => 1.0 }.freeze

def change_count(change)
  total_change = change.split.reduce(0) { |sum, change_type| sum + CHANGE[change_type] }

  format('$%<total_change>.2f', total_change: total_change)
end
