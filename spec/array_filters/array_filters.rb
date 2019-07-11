class Array
  def even
    integers.select(&:even?)
  end

  def odd
    integers.select(&:odd?)
  end

  def under(x)
    integers.select { |v| v < x }
  end

  def over(x)
    integers.select { |v| v > x }
  end

  def in_range(lower, upper = nil)
    if lower && upper
      integers.select { |v| v >= lower && v <= upper }
    else
      range = lower
      integers.select { |v| v >= range.first && v <= range.last }
    end
  end

  def integers
    self.select { |v| v.is_a? Integer }
  end
end
