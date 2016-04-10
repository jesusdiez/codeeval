require 'time'

File.open(ARGV[0]).each_line do |line|

  puts line.scan(/((?:[0-1][0-9]|2[0-4]):(?:[0-5][0-9]):(?:[0-5][0-9]))\s?/)
      .map { |arr| arr.pop }
      .map { |t| Time.parse(t) }
      .sort
      .reverse
      .map { |t| t.strftime("%T") }
      .join(" ")

end
