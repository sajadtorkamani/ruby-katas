# frozen_string_literal: true

def read_time(time)
  TimeReader.new(time).print_time
end

class TimeReader
  attr_accessor :time, :units, :hour, :minute

  def initialize(time)
    units = time.split(':')
    @time = time
    @hour = HOURS[units[0].to_sym]
    @minute = units[1].to_i
  end

  def print_time
    return 'midnight' if midnight?
    return "#{@hour} o'clock" if exact_hour?
    return "quarter past #{@hour}" if quarter_past?
    return "half past #{@hour}" if half_past?
    return "quarter to #{next_hour}" if quarter_to?

    if @minute <= 30
      "#{pluralize_minutes(minutes_past)} past #{@hour}"
    else
      "#{pluralize_minutes(minutes_remaining)} to #{next_hour}"
    end
  end

  def pluralize_minutes(minutes)
    minutes == 'one' ? "#{minutes} minute" : "#{minutes} minutes"
  end

  def minutes_past
    MINUTES[@minute]
  end

  def minutes_remaining
    MINUTES[60 - @minute]
  end

  def midnight?
    @time.eql? '00:00'
  end

  def exact_hour?
    @minute.zero?
  end

  def next_hour
    return 'midnight' if @time.start_with?('23')

    hours = HOURS.values
    current_hour_index = hours.find_index(@hour)
    hours[(current_hour_index + 1) % hours.count]
  end

  def quarter_past?
    @minute === 15
  end

  def half_past?
    @minute === 30
  end

  def quarter_to?
    @minute == 45
  end
end

HOURS = {
  '01': 'one', '02': 'two', '03': 'three', '04': 'four', '05': 'five', '06': 'six', '07': 'seven', '08': 'eight',
  '09': 'nine', '10': 'ten', '11': 'eleven', '12': 'twelve', '13': 'one', '14': 'two', '15': 'three', '16': 'four',
  '17': 'five', '18': 'six', '19': 'seven', '20': 'eight', '21': 'nine', '22': 'ten', '23': 'eleven', '00': 'midnight'
}.freeze

MINUTES = [
  'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
  'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen', 'twenty', 'twenty one',
  'twenty two', 'twenty three', 'twenty four', 'twenty five', 'twenty six', 'twenty seven', 'twenty eight',
  'twenty nine', 'thirty'
].freeze
