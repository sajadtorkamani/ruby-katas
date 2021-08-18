# frozen_string_literal: true

def scale_string(str, k, v)
  str
    .split("\n")
    .map { |substr| Array.new(v).fill(substr) }.flatten # vertical scale
    .map { |substr| horizontal_scale(substr, k) } # horizontal scale
    .join("\n")
end

def horizontal_scale(str, n)
  str.split('').map { |char| char * n }.join
end