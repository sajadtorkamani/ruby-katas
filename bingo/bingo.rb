# frozen_string_literal: true

def bingo(tickets, n)
  wins = tickets.map do |ticket|
    chars, winning_num = ticket
    chars.split('').any? { |char| char.ord === winning_num } ? 1 : 0
  end.sum

  wins >= n ? 'Winner!' : 'Loser!'
end
