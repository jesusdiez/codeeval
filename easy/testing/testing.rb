
File.open(ARGV[0]).each_line do |line|

  input, solution = line.split(' | ')
  input = input.scan /\w/
  solution = solution.scan /\w/

  error_levels = {0 => "Done", 2 => "Low", 4 => "Medium", 6 => "High", 999 => "Critical"}
  error_number = 0

  input.each_with_index do |val, key|
    error_number = error_number + (val == solution[key] ? 0 : 1)
  end

  error_levels.each_key do |key|
    val = error_levels[key]
    if error_number <= key
      puts val
      break
    end
  end

end
