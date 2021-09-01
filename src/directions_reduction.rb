# frozen_string_literal: true

def directions_reduction(directions)
  return directions if directions.length <= 1

  directions.each.with_index do |current_direction, index|
    break if index == directions.length - 1

    next_direction = directions[index + 1]

    if is_redundant_direction(current_direction, next_direction)
      directions.delete_at(index)
      directions.delete_at(index)
      directions_reduction(directions)
    end
  end

  directions
end

def is_redundant_direction(current_direction, next_direction)
  [current_direction, next_direction].sort.join.match?(/NORTHSOUTH|EASTWEST/)
end