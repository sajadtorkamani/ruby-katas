# frozen_string_literal: true

def mean(town, data)
  RainfallData.new(data).town_mean(town)
end

def variance(town, data)
  RainfallData.new(data).town_variance(town)
end

class RainfallData
  attr_reader :data, :town_rainfalls

  def initialize(data)
    @data = data
    @town_rainfalls = collect_town_rainfalls
  end

  def collect_town_rainfalls
    rainfalls = {}

    data.split("\n").each do |town_data|
      town_name = town_data.match(/^\w+/).to_s
      rainfalls[town_name] = town_data.scan(/[0-9.]+/).map(&:to_f)
    end

    rainfalls
  end

  def town_mean(town)
    return -1 unless valid_town?(town)

    town_rainfalls[town].sum / town_rainfalls[town].length
  end

  def valid_town?(town)
    town_rainfalls.key?(town)
  end

  def town_variance(town)
    return -1 unless valid_town?(town)

    mean = town_mean(town)

    sum_of_squared_differences = town_rainfalls[town].map do |month_rainfall|
      (month_rainfall - mean)**2
    end.sum

    sum_of_squared_differences / town_rainfalls[town].length
  end
end
