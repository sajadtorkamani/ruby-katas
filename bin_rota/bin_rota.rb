def bin_rota(staff_rows)
  staff_rows.map.with_index { |row, index| index.even? ? row : row.reverse }.flatten
end