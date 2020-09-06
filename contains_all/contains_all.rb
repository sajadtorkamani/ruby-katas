class Array
  def contains_all?(arr)
    arr.all? { |item| include?(item) }
  end
end
