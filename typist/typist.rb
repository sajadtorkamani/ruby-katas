# frozen_string_literal: true

def typist(str)
  taps = 0
  caps_on = false

  str.each_char do|char|
    if char.is_upper?
      if caps_on
        taps += 1
      else
        caps_on = true
        taps += 2
      end
    else
      if caps_on
        caps_on = false
        taps += 2
      else
        taps += 1
      end
    end
  end

  taps
end

class String
  def is_upper?
    !!self.match(/\p{Upper}/)
  end

  def is_lower?
    !!self.match(/\p{Lower}/)
    # or: !self.is_upper?
  end
end
