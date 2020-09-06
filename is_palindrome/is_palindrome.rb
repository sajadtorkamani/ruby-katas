# frozen_string_literal: true

def is_palindrome(str)
  str === str.reverse if str.is_a? String
end
