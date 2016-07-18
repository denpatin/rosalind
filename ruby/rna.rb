open('rna.txt', 'w') { |f| f.write File.read(ARGV[0]).strip.tr('T', 'U') }
