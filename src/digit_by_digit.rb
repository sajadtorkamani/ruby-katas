# frozen_string_literal: true

NAMES = %w[zero one two three four five six seven eight nine].freeze

class Num
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def to_i
    @value.to_i
  end

  NAMES.each.with_index do |name, num|
    define_singleton_method(name.to_sym) do
      new(num.to_s)
    end

    define_method(name.to_sym) do
      Num.new(@value + num.to_s)
    end
  end
end
