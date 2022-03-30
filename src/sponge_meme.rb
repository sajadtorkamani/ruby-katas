# frozen_string_literal: true

def sponge_meme(str)
  str.chars.map.with_index { |char, row_index| row_index.even? ? char.upcase : char.downcase }.join
end
