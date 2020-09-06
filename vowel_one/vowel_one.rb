def vowel_one(str)
  str.chars.map do |char|
    if char.match? /[aeiou]/i
      '1'
    else
      '0'
    end
  end.join
end
