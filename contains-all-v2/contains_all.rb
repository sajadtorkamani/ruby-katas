# frozen_string_literal: true

def contains_all?(haystack, needle)
  needle.uniq.all? do |item|
    haystack_count = haystack.count { |v| v.eql?(item) }
    needle_count = needle.count { |v| v.eql?(item) }

    haystack_count >= needle_count
  end
end
