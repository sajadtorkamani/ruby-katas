# frozen_string_literal: true

class String
  def replace_at(row_index, replacement)
    self[0...row_index] + replacement + self[(row_index + 1)..]
  end
end

def mutate_my_strings(str1, str2)
  differing_indices = []
  mutations = [str1]

  str2.each_char.with_index { |char, row_index| differing_indices << row_index unless char == str1[row_index] }

  differing_indices.each do |row_index|
    mutation = mutations.last.replace_at(row_index, str2[row_index])
    mutations << mutation
  end

  "#{mutations.join("\n")}\n"
end
