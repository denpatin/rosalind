#!/usr/bin/env ruby

result = {}
ARGV[0].split(/>/)[1..-1].each do |set|
  processed = set.tr "\n", ''
  string = processed[13..-1]
  gc = string.split(//).select { |s| %w(C G).include? s }.size.to_f
  result[processed[0..12]] = (gc / string.length * 100).round(6)
end
result = result.sort_by(&:last).last
result[1] = format '%.6f', result[1]
puts result.join "\n"
