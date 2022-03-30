# frozen_string_literal: true

def snail(matrix)
  num_rows = matrix.length
  last_row_index = matrix.length - 1
  last_column_index = matrix.length - 1

  path = []

  # Walk through top row
  path += matrix[0]

  # Keeping going down the last column of each row
  1.upto(last_row_index) do |row_index|
    path << matrix[row_index][last_column_index]
  end

  # Walk through columns of last row in reverse column order
  (last_column_index - 1).downto(0) do |col_index|
    path << matrix[last_row_index][col_index]
  end

  # Go back up the first column of each row until the secondrow
  (last_row_index - 1).upto(1) do |row_index|
    # puts row_index
    path << matrix[row_index][0]
  end

  # Walk though columns of second row
  (1).upto(last_row_index - 1) do |col_index|
    puts col_index
    path << matrix[1][col_index]
  end

  path
end
