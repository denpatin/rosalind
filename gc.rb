# encoding: utf-8

result = {}
File.read(ARGV[0]).split(/>/)[1..-1].each do |set|
  processed = set.tr("\n", '')
  label = processed[0..12]
  string = processed[13..-1]
  gc = string.split(//).select { |s| %w(C G).include? s }.count.to_f
  result[label] = (gc / string.length * 100).round(6)
end

puts result.sort_by { |_, v| -v }.first.join("\n")
