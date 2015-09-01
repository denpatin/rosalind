# Usage:
# $ ruby dna.rb /path/to/the/file
#
# Problem task:
# http://rosalind.info/problems/dna/
#
# Input:
# A DNA string s of length at most 1000 nt.
#
# Output:
# Four integers (separated by spaces) counting the respective number of times
# that the symbols 'A', 'C', 'G', and 'T' occur in s.

puts %w(A C G T).map { |c| File.read(ARGV[0]).count c }.join ' '
