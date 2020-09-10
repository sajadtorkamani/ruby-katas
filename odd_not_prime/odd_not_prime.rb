# frozen_string_literal: true

require 'prime'

def odd_not_prime(num)
  (1..num).count { |x| x.odd? && !Prime.prime?(x) }
end
