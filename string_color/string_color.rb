# frozen_string_literal: true

def string_color(name)
  return nil if name.size < 2

  ords = name.each_char.map(&:ord)

  part1 = ords.sum
  part2 = ords.reduce(:*)
  part3 = (ords.first - ords[1..].sum).abs

  [part1, part2, part3]
    .map { |num| (num % 256).to_s(16).rjust(2, '0').upcase }
    .join('')
end
