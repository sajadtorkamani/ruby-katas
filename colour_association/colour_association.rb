def colour_association(colours)
  colours.map do |colour|
    { colour[0] => colour[1] }
  end
end