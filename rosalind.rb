# encoding: utf-8

# Main class for all problem solutions
class Rosalind
  def initialize(data)
    @data = data.strip
  end

  def dna
    %w(A C G T).map { |char| @data.count char }.join ' '
  end

  def rna
    @data.tr 'T', 'U'
  end

  def revc
    @data.tr('ACGT', 'TGCA').reverse
  end

  def fib
    args = @data.split(' ').map(&:to_i)
    if [*1..40].include?(args[0]) && [*1..5].include?(args[1])
      tmp = 0
      total = 1
      (args[0] - 1).times { tmp, total = total, total + tmp * args[1] }
      total
    else
      'Incorrect arguments!'
    end
  end

  def gc
    result = {}
    @data.split(/>/)[1..-1].each do |set|
      processed = set.tr "\n", ''
      string = processed[13..-1]
      gc = string.split(//).select { |s| %w(C G).include? s }.size.to_f
      result[processed[0..12]] = (gc / string.length * 100).round(6)
    end
    result = result.sort_by(&:last).last
    result[1] = format '%.6f', result[1]
    result.join "\n"
  end
end
