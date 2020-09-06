# frozen_string_literal: true

def extract_ids(data)
  data.to_s.scan(/\d+/).map(&:to_i)
end
