def sort_by_last_char(arr)
  arr.sort_by { |item| item.to_s[-1] }
end
