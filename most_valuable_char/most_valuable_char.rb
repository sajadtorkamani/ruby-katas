def most_valuable_char(str)
  chars = {}

  str.chars.uniq.each do |char|
    chars[char] = str.rindex(char) - str.index(char)
  end

  chars.sort do |a, b|
    # Sort lexicographically if values are same
    if a[1] === b[1]
      a[0] <=> b[0]
    else
      # Sort by value
      b[1] <=> a[1]
    end
  end.first[0]
end