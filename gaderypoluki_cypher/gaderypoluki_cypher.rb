def encode(str)
  str.tr('GDRPLKgdrplkAEYOUIaeyoui', 'AEYOUIaeyouiGDRPLKgdrplk')
end

alias decode encode
