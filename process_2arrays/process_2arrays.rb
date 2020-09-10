# frozen_string_literal: true

def process_2arrays(arr1, arr2)
  set1 = arr1.to_set
  set2 = arr2.to_set

  common = (set1 & set2)
  uncommon_items = (set1 + set2) - common
  d1 = set1 - set2
  set2_difference = set2 - set1

  [common, uncommon_items, d1, set2_difference].map(&:count)
end
