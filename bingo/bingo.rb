# frozen_string_literal: true

def bingo(tickets, num)
  wins = tickets.map do |ticket|
    chars, winning_num = ticket
    chars.chars.any? { |char| char.ord == winning_num } ? 1 : 0
  end.sum

  wins >= num ? 'Winner!' : 'Loser!'
end
