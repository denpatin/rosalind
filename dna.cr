#!/usr/bin/env crystal

puts %w(A C G T).map { |char| ARGV[0].count char }.join ' '
