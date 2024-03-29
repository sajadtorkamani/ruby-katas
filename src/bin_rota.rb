# frozen_string_literal: true

def bin_rota(staff_rows)
  staff_rows.map.with_index { |row, row_index| row_index.even? ? row : row.reverse }.flatten
end
