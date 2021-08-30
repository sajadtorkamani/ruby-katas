# frozen_string_literal: true

# rubocop:disable Style/FormatString
module Math
  def self.degrees(radian)
    '%gdeg' % (radian * (180 / Math::PI)).round(2)
  end

  def self.radians(degrees)
    '%grad' % (degrees * (Math::PI / 180)).round(2)
  end
end
# rubocop:enable Style/FormatString
