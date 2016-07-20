open('revc.txt', 'w') do |f|
  f.write File.read(ARGV[0]).strip.tr('ACGT', 'TGCA').reverse
end
