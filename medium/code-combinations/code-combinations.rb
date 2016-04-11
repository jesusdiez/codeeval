
File.open(ARGV[0]).each_line do |line|
  haystack = line.split(" | ").map { |str| str.split("") }
  timesFound = 0
  strToMatch = "code".chars.sort.join
  numrows = haystack.count
  haystack.each_with_index do |row, y|
    if matrixOutOfVerticalBounds = (y + 1 == numrows) then
      next
    end
    numcols = row.count
    row.each_with_index do |col, x|
      if matrixOutOfHorizontalBounds = (x + 1 == numcols) then
        next
      end
      strFromMatrix = haystack[y][x] + haystack[y][x+1] + haystack[y+1][x] + haystack[y+1][x+1];
      timesFound = timesFound + (strFromMatrix.chars.sort.join == strToMatch ? 1 : 0)
    end
  end
  puts timesFound
end
