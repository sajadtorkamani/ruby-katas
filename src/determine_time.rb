# frozen_string_literal: true

SECONDS_IN_DAY = 86_400

def determine_time(durations)
  total_seconds = durations.reduce(0) do |total, duration|
    hours, minutes, seconds = duration.split(':').map(&:to_i)

    total + (seconds + (minutes * 60) + (hours * 60 * 60))
  end

  total_seconds <= SECONDS_IN_DAY
end
