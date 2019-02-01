#!/usr/bin/env ruby

puts ARGV[0].tr('ACGT', 'TGCA').reverse
