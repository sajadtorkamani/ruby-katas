class Array
  def invoke(method_name, *args, &block)
    items = block_given? ? self.select { |item| block.call(item) } : self

    items
      .map { |item| item.send(method_name, *args) if item.respond_to?(method_name) }
      .reject(&:nil?)
  end
end
