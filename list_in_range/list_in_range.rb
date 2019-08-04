def list_in_range(hash, range)
  hash
    .select { |k, v| range.include?(v) }
    .sort_by { |k, v| v }
    .to_a
    .map { |v| "#{v.first} (#{v.last})"}
    .join(', ')
end