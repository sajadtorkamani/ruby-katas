# frozen_string_literal: true

def encode(str)
  str.tr('GDRPLKgdrplkAEYOUIaeyoui', 'AEYOUIaeyouiGDRPLKgdrplk')
end

alias decode encode
