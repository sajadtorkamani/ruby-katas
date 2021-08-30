# frozen_string_literal: true

def scale_string(str, vertical_scale, horizontal_scale)
  str
    .split("\n")
    .map { |substr| Array.new(horizontal_scale).fill(substr) }.flatten # vertical scale
    .map { |substr| horizontal_scale(substr, vertical_scale) } # horizontal scale
    .join("\n")
end

def horizontal_scale(str, count)
  str.chars.map { |char| char * count }.join
end
