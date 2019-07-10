class Array
  def contains_all?(arr)
    arr.all? { |item| self.include?(item) }
  end
end
