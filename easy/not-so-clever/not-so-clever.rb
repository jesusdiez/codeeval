
def stupid_sort_step(collection)
  new_collection = collection

  collection.each_with_index do |val, key|
    if key + 1 == collection.length
      break
    end
    if val > collection[key+1] then
      new_collection[key]   = collection[key+1]
      new_collection[key+1] = val
      break
    end
  end
  return new_collection
end


File.open(ARGV[0]).each_line do |line|
  numbers, iterations = line.split('|')
  numbers = numbers.split.map(&:to_i)
  iterations = iterations.to_i

  while iterations > 0
    numbers = stupid_sort_step(numbers)
    iterations = iterations - 1
  end

  puts numbers.join(' ')
end
