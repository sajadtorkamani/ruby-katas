# frozen_string_literal: true

def pillow(str)
  fridge_str, pillow_str = str

  fridge_indices = indices_of_char("n", fridge_str)
  pillow_indices = indices_of_char("B", pillow_str)

  pillow_indices.each_with_index do |pillow_row_index, index|
    return true if pillow_row_index == fridge_indices[pillow_row_index]
  end

  false
end

def indices_of_char(char, str)
  str.enum_for(:scan, /(?=#{char})/).map { Regexp.last_match.offset(0).first }
end
