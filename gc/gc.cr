#!/usr/bin/env crystal

data = <<-GC
>Rosalind_6404
CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCC
TCCCACTAATAATTCTGAGG
>Rosalind_5959
CCATCGGTAGCGCATCCTTAGTCCAATTAAGTCCCTATCCAGGCGCTCCGCCGAAGGTCT
ATATCCATTTGTCAGCAGACACGC
>Rosalind_0808
CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGAC
TGGGAACCTGCGGGCAGTAGGTGGAAT
GC
result = {} of String => Float64
data.split(/>/)[1..-1].each do |set|
  processed = set.lines.join
  string = processed[13..-1]
  gc = string.split(//).select { |s| %w(C G).includes? s }.size.to_f
  result[processed[0..12]] = (gc / string.size * 100).round(6)
end
puts "#{result.key(result.values.max)}\n#{result.values.max}"
