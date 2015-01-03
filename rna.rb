# USAGE:
#
# Input:
# $ ruby rna.rb /path/to/the/file-with-DNA-string
#
# Output:
# The transcribed RNA string.

# Reading the DNA string, transcribing it, and outputting the RNA string
puts File.open(ARGV[0]).read.gsub(/T/, 'U')
