class Num
  @@names = %w[zero one two three four five six seven eight nine]

  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def to_i
    @value.to_i
  end

  @@names.each.with_index do |name, num|
    define_singleton_method(name.to_sym) do
      new(num.to_s)
    end

    define_method(name.to_sym) do
      Num.new(@value + num.to_s)
    end
  end
end
