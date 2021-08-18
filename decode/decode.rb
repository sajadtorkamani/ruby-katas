# frozen_string_literal: true

ALPHABET = ('a'..'z').to_a

def decode(str)
  str.each_char.map { |c| decode_char(c) }.join
end

def decode_char(char)
  return ' ' if char == ' '

  char_index = ALPHABET.index(char)
  decoded_char_index = 25 - char_index

  ALPHABET[decoded_char_index]
end
