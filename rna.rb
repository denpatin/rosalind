# Usage:
# $ ruby rna.rb /path/to/the/file
#
# Problem task:
# http://rosalind.info/problems/rna/
#
# Input:
# A DNA string t having length at most 1000 nt.
#
# Output:
# The transcribed RNA string of t.

open('rna.txt', 'w') { |f| f.write File.read(ARGV[0]).strip.gsub(/T/, 'U') }
