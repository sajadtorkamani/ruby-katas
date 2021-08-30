# frozen_string_literal: true

def colour_association(colours)
  colours.map do |name, association|
    { name => association }
  end
end
