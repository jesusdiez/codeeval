
File.open(ARGV[0]).each_line do |line|

  grays = line.strip.split(" | ").map { |str| str.split("").map(&:to_i) }
  results = []
  grays.each do |gray|
    binary = []
    gray.each_with_index do |digit, idx|

      # Most significative Bit (first index)
      if idx == 0 then
        binary[idx] = digit
        next
      end

      # Rest of the indexes
      prevBinaryValue = binary[idx-1]
      if digit == 0 then
        binary[idx] = prevBinaryValue
      else
        binary[idx] = prevBinaryValue == 1 ? 0 : 1
      end
    end
    results.push(binary.join.to_i(2))
  end
  puts results.join(" | ")
end


#
# http://www.electrical4u.com/gray-code-binary-to-gray-code-and-that-to-binary-conversion/
#
# Gray code to binary conversion is again very simple and easy process.
# Following steps can make your idea clear on this type of conversions.
# (1) The M.S.B of the binary number will be equal to the M.S.B of the given gray code.
# (2) Now if the second gray bit is 0 the second binary bit will be same as the previous
#   or the first bit.
#     If the gray bit is 1 the second binary bit will alter.
#     If it was 1 it will be 0 and if it was 0 it will be 1.
# (3) This step is continued for all the bits to do Gray code to binary conversion.