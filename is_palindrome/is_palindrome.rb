def is_palindrome(str)
  if str.is_a? String
    str === str.reverse
  else
    nil
  end
end
