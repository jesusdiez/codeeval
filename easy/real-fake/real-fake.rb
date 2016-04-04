
def validcard(cardnumber)
  number_as_array = cardnumber.scan(/\w/).map(&:to_i)
  sum = 0

  number_as_array.each_with_index do |val, key|
    is_odd = (key+1) % 2 > 0
    sum = sum + (is_odd ? val * 2 : val)
  end

  return sum % 10 == 0
end


File.open(ARGV[0]).each_line do |line|
    puts validcard(line) ? "Real" : "Fake"
end
