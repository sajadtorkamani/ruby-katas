# frozen_string_literal: true

def filter_even_length_words(words)
  words.select { |w| w.length.even? }
end
