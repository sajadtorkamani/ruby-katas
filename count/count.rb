# frozen_string_literal: true

def count(list, &block)
  list.count { |x| block.call(x) }
end
