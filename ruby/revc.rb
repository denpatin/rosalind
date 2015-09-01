# Usage:
# $ ruby revc.rb /path/to/the/file
#
# Problem task:
# http://rosalind.info/problems/revc/
#
# Input:
# A DNA string s of length at most 1000 bp.
#
# Output:
# The reverse complement s_c of s.

open('revc.txt', 'w') do |f|
  f.write File.read(ARGV[0]).strip.tr('ACGT', 'TGCA').reverse
end
