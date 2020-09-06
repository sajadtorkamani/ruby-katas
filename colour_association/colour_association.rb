def colour_association(colours)
  colours.map do |name, association|
    { name => association }
  end
end
