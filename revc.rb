# USAGE:
# 
# Input:
# $ ruby revc.rb /path/to/the/file-with-DNA-string
# 
# Output:
# The reverse complement of the DNA string.

def revc(string)
	# Replacing each of the ACGT characters by the corresponding ones from the TGCA sequence, and reversing the string
	string.strip.tr("ACGT", "TGCA").reverse
end

puts revc(File.open(ARGV[0]).read)
