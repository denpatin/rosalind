# Usage:
# $ ruby fib.rb /path/to/the/file
#
# Problem task:
# http://rosalind.info/problems/fib/
#
# Input:
# Positive integers n <= 40 and k <= 5.
#
# Output:
# The total number of rabbit pairs that will be present after n months if we
# begin with 1 pair and in each generation, every pair of reproduction-age
# rabbits produces a litter of k rabbit pairs (instead of only 1 pair).

args = File.read(ARGV[0]).split(' ').map(&:to_i)
if [*1..40].include?(args[0]) && [*1..5].include?(args[1])
  tmp, total = 0, 1
  (args[0] - 1).times { tmp, total = total, total + tmp * args[1] }
  puts total
else
  puts 'Incorrect arguments!'
end
