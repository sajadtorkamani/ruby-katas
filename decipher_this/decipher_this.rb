# frozen_string_literal: true

def decipher_this(str)
  str.split.map { |word| decipher_word(word) }.join(' ')
end

def decipher_word(word)
  word = word.gsub(/^\d+/) { |char_code| char_code.to_i.chr }

  return word if word.length == 1

  second_char = word[1]
  last_char = word[-1]

  word[1] = last_char
  word[-1] = second_char

  word
end
