def line_types(lines)
  lines.map do |line|
    next :unknown if line.nil?
    next :alpha if line.match?(/alpha/i)
    next :beta if line.match?(/beta/i)
    :unknown
  end
end
