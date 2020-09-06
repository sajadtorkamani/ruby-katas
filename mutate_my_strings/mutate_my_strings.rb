# frozen_string_literal: true

class String
  def replace_at(index, replacement)
    self[0...index] + replacement + self[(index + 1)..-1]
  end
end

def mutate_my_strings(str1, str2)
  differing_indices = []
  mutations = [str1]

  str2.each_char.with_index { |char, index| differing_indices << index unless char == str1[index] }

  differing_indices.each do |index|
    mutation = mutations.last.replace_at(index, str2[index])
    mutations << mutation
  end

  "#{mutations.join("\n")}\n"
end
