# frozen_string_literal: true

# frozen_string_literal

def contains_all_rots(str, rotations)
  return true if str.empty?

  str_rotations(str).all? { |r| rotations.include?(r) }
end

def str_rotations(str)
  rots = [str]

  (str.length - 1).times do |_n|
    first_char = str[0]
    remaining_chars = str[1..]
    str = remaining_chars + first_char
    rots << str
  end

  rots
end
