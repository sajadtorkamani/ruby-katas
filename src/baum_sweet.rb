# frozen_string_literal: true

require 'debug'

class BaumSweet < Enumerator
  def initialize
    super do |yielder|
      num = 0

      loop do
        yielder << value(num)
        num += 1
      end
    end
  end

  def value(num)
    return 1 if num.zero?

    binary = num.to_s(2)
    consecutive_zeros = binary.scan(/(0)(\1*)/).map(&:join)
    consecutive_zeros.any? { |zeros| zeros.size.odd? } ? 0 : 1
  end
end
