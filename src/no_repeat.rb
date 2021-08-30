# frozen_string_literal: true

def no_repeat(str)
  str.chars.find { |char| str.count(char) == 1 }
end
