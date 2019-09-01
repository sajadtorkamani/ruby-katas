def str_to_hash(str)
  hash = {}

  str
    .split(', ')
    .each do |part|
      key, val = part.split('=')

      hash[key.to_sym] = val.to_i
  end

  hash
end