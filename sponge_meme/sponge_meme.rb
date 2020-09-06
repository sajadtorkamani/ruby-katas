def sponge_meme(str)
  str.chars.map.with_index { |char, index| index.even? ? char.upcase : char.downcase }.join
end
