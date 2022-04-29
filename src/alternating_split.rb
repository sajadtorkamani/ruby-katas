# frozen_string_literal: true

def encrypt(str, iterations)
  return str if str.nil? || str.empty? || iterations <= 0

  part1 = ''
  part2 = ''

  str.chars.each_with_index do |char, row_index|
    row_index.odd? ? part1 += char : part2 += char
    str = "#{part1}#{part2}"
  end

  encrypt(str, iterations - 1)
end

def decrypt(str, iterations)
  return str if str.nil? || str.empty? || iterations <= 0

  decrypted = ''
  mid_index = str.length / 2
  part1 = str[0...mid_index]
  part2 = str[mid_index..]

  part2.length.times do |row_index|
    decrypted += part2[row_index] || ''
    decrypted += part1[row_index] || ''
  end

  decrypt(decrypted, iterations - 1)
end
