
File.open(ARGV[0]).each_line do |line|

  players, number = line.split(' | ')
  players = players.split
  number = number.to_i

  while players.count > 1 do
    key_to_remove = (number > players.count ? (number % players.count) : number) - 1
    players -= [players[key_to_remove]]
  end

  puts players[0]

end
