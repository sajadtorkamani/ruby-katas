# frozen_string_literal: true

def define_suit(card)
  { 'C': 'clubs', 'S': 'spades', 'D': 'diamonds', 'H': 'hearts' }[card[-1].to_sym]
end
