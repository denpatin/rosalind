# USAGE:
#
# Input:
# $ ruby dna.rb /path/to/the/file-with-DNA-string
#
# Output:
# Four integers separated by spaces counting the respective number of times
# that the symbols 'A', 'C', 'G', and 'T' occur in the given DNA string.

# Declaring the resulting hash
counts = Hash.new(0)

# Reading molecule names from the file and counting their occurrences
File.open(ARGV[0]).read.split('').each do |molecule|
  counts[molecule] += 1 if %w(A C G T).include? molecule
end

# Outputting the occurrences in the requested order
puts counts.sort.each { |count| counts[count] }.to_h.values.join(' ')
