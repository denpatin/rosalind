args = File.read(ARGV[0]).split(' ').map(&:to_i)
if [*1..40].include?(args[0]) && [*1..5].include?(args[1])
  tmp, total = 0, 1
  (args[0] - 1).times { tmp, total = total, total + tmp * args[1] }
  puts total
else
  puts 'Incorrect arguments!'
end
