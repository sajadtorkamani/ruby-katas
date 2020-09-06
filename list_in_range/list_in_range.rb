def list_in_range(hash, range)
  hash
    .select { |_k, v| range.include?(v) }
    .sort_by { |_k, v| v }
    .to_a
    .map { |v| "#{v.first} (#{v.last})" }
    .join(', ')
end
