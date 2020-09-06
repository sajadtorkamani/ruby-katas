def sum_times_tables(table, min, max)
  return 0 if table.empty?

  table.reduce(0) do |total, num|
    num_sum = 0

    min.upto(max) { |x| num_sum += num * x }

    total + num_sum
  end
end
