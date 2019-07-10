def solve(str)
  str
    .gsub(/[aeiou]/, '*')
    .scan(/\w+/)
    .map do |substr|
      substr.split('').reduce(0) { |sum, char| sum + char.ord - 96 }
    end
    .max
end

