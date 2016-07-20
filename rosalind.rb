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
end
