def format_words(words)
  return '' if words.nil?

  words = words.reject(&:empty?)

  case words.count
    when 0 then ''
    when 1 then words.first
    else words.take(words.count - 1) .join(', ') + ' and ' + words.last
  end
end
