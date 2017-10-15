#!/usr/bin/env ruby

hamm = 0
dna1, dna2 = ARGV[0].split("\n").map(&:chars)
dna1.each_with_index { |el, index| hamm += 1 unless dna2[index] == el }
puts hamm
