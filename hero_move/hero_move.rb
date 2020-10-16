# frozen_string_literal: true

class Hero
  attr_accessor :coords_x, :coords_y

  GRID = [
    %w[00 01 02 03 04],
    %w[10 11 12 13 14],
    %w[20 21 22 23 24],
    %w[30 31 32 33 34],
    %w[40 41 42 43 44]
  ].freeze

  def initialize
    @coords_x = 0
    @coords_y = 0
  end

  def move(direction)
    original_coords_x = coords_x
    original_coords_y = coords_y

    case direction
    when 'up'
      @coords_y -= 1
    when 'right'
      @coords_x += 1
    when 'down'
      @coords_y += 1
    when 'left'
      @coords_x -= 1
    else
      raise "Invalid direction: #{direction}"
    end

    if coords_y.negative? || coords_y > GRID.size
      @coords_y = original_coords_y
      raise 'Invalid move'
    end

    # rubocop:disable Style/GuardClause
    if coords_x.negative? || coords_x > GRID.size
      @coords_x = original_coords_x
      raise 'Invalid move'
    end
    # rubocop:enable Style/GuardClause
  end

  def position
    GRID[coords_y][coords_x]
  end
end
