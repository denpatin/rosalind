# USAGE:
# 
# Input:
# a) If you want to have a console output:
# $ ruby rna.rb /path/to/the/file-with-DNA-string
# b) If you want to have an output into the file:
# $ ruby rna.rb -f /path/to/the/resulting-file /path/to/the/file-with-DNA-string
# 
# Output:
# The transcribed RNA string.

# Method for RNA transcribing
def dna2rna(dna)
	# Replacing all T-s with U-s
	dna.gsub(/T/, 'U')
end

# Checking whether there is an argument
if ARGV.length == 3 && ARGV[0] == '-f'
	# If the argument exists and it is '-f', then write the results into the specified file
	open("#{ARGV[1]}", 'w') { |f| f.puts dna2rna(File.open(ARGV[2]).read) }
elsif ARGV.length == 1
	# If there is the only argument, reading a DNA string from the file and dna2rna-ing
	puts dna2rna(File.open(ARGV[0]).read)
else
	puts "An error has occurred."
end
