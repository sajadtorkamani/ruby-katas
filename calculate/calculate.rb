# frozen_string_literal: true

def calculate(str)
  str
    .scan(/\d+/).map(&:to_i)
    .reduce(str.match('gains') ? :+ : :-)
end
