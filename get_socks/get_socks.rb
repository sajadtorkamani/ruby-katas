def get_socks(person, socks)
  if person == 'Punky'
    unique_socks = socks.uniq
    unique_socks.count >= 2 ? unique_socks.first(2) : []
  else
    duplicate = socks.find { |sock| socks.count(sock) >= 2 }
    duplicate ? [duplicate, duplicate] : []
  end
end

