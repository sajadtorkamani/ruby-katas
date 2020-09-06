# frozen_string_literal: true

def format_words(words)
  return '' if words.nil?

  words = words.reject(&:empty?)

  case words.count
  when 0
    ''
  when 1
    words.first
  else
    "#{words.take(words.count - 1).join(', ')} and #{words.last}"
  end
end
