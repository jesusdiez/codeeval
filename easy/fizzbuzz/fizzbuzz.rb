File.open(ARGV[0]).each_line do |line|
  x, y, n = line.split.map(&:to_i)

  i = 1
  while i <= n
    if i%x == 0 && i%y == 0
       print 'FB'
     elsif i%x == 0
       print 'F'
     elsif i%y == 0
       print 'B'
     else
       print i
     end
     print " "

     i = i+1
  end
  puts ""

end
