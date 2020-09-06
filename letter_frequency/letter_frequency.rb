def letter_frequency(str)
  letters = str.downcase.scan(/[a-z]/)

  letters
    .uniq
    .map { |letter| [letter, letters.count(letter)] }
    .sort { |a, b| a[1] === b[1] ? a[0] <=> b[0] : b[1] <=> a[1] }
end
