
File.open(ARGV[0]).each_line do |line|

  prizes = Hash.new
  prizes[:v] = 3
  prizes[:z] = 4
  prizes[:w] = 5

  v, z, w, h = line.scan(/(?:[Vampires|Zombies|Witches|Houses]+):\s([0-9]+)(?:,\s)?/).map(&:pop).map(&:to_i)

  perHouse = 0
  perHouse = perHouse + (v * prizes[:v])
  perHouse = perHouse + (z * prizes[:z])
  perHouse = perHouse + (w * prizes[:w])
  total = perHouse * h

  puts (total / (v+z+w)).floor

end
