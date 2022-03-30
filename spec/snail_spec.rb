# frozen_string_literal: true

require_relative "../src/snail"

describe "snail" do
  it "returns the correct result" do
    input = [
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
    ]

    # [0, 0], [0, 1], [0, 2]
    # [1, 2], [2, 2], [2, 1] # [2, 0], [1, 0], [1, 1]

    expected_output = [1, 2, 3, 6, 9, 8, 7, 4, 5]

    expect(snail(input)).to eq expected_output
  end

  # it "returns the correct result" do
  #   input = [
  #     [1, 2, 3, 4]
  #     [5, 6, 7, 8]
  #     [9, 10, 11, 12]
  #     [13, 14, 15, 16],
  #   ]

  #   # [0, 0], [0, 1], [0, 2]
  #   # [1, 2], [2, 2], [2, 1] # [2, 0], [1, 0], [1, 1]

  #   expected_output = [1, 2, 3, 4, 8, 12, 16, 15, 14, 13, 9, 5, 6, 7, 11, 10]
  #   # [0, 0], [0, 1], [0, 2]
  #   # [1, 2], [2, 2], [2, 1] # [2, 0], [1, 0], [1, 1]

  #   expect(snail(input)).to eq expected_output
  # end
end
