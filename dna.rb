puts %w(A C G T).map { |c| File.read(ARGV[0]).count c }.join ' '
