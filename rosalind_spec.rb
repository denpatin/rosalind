# encoding: utf-8

require_relative 'rosalind'
require 'coveralls'

Coveralls.wear!

describe Rosalind do
  # Given: A DNA string of length at most 1000 nt.
  # http://rosalind.info/problems/dna
  context 'DNA: Counting DNA Nucleotides' do
    data = <<-DATASET
AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC
    DATASET
    result = <<-RESULT
20 12 17 21
    RESULT
    it 'returns the number of times A, C, G and T occurs in a DNA string' do
      expect(Rosalind.new(data).dna).to eq(result.strip)
    end
  end

  # Given: A DNA string having length at most 1000 nt.
  # http://rosalind.info/problems/rna
  context 'RNA: Transcribing DNA into RNA' do
    data = <<-DATASET
GATGGAACTTGACTACGTAAATT
    DATASET
    result = <<-RESULT
GAUGGAACUUGACUACGUAAAUU
    RESULT
    it 'returns the transcribed RNA string of a DNA string' do
      expect(Rosalind.new(data).rna).to eq(result.strip)
    end
  end

  # Given: A DNA string of length at most 1000 bp.
  # http://rosalind.info/problems/revc
  context 'REVC: Complementing a Strand of DNA' do
    data = <<-DATASET
AAAACCCGGT
    DATASET
    result = <<-RESULT
ACCGGGTTTT
    RESULT
    it 'returns the reverse complement of a DNA string' do
      expect(Rosalind.new(data).revc).to eq(result.strip)
    end
  end

  # Given: Positive integers n <= 40 and k <= 5
  # http://rosalind.info/problems/fib
  context 'FIB: Rabbits and Recurrence Relation' do
    describe 'when input data is correct' do
      data = '5 3'
      result = 19
      it 'returns the total number of rabbit pairs that will be present after n months' do
        expect(Rosalind.new(data).fib).to eq(result)
      end
    end
    describe 'when n is incorrect' do
      data = '-5 3'
      result = 'Incorrect arguments!'
      it 'returns an error message' do
        expect(Rosalind.new(data).fib).to eq(result)
      end
    end
    describe 'when k is incorrect' do
      data = '5 8'
      result = 'Incorrect arguments!'
      it 'returns an error message' do
        expect(Rosalind.new(data).fib).to eq(result)
      end
    end
  end

  # Given: At most 10 DNA strings in FASTA format of length at most 1 kbp each
  # http://rosalind.info/problems/gc
  describe 'GC: Computing GC Content' do
    data = <<-DATASET
>Rosalind_6404
CCTGCGGAAGATCGGCACTAGAATAGCCAGAACCGTTTCTCTGAGGCTTCCGGCCTTCCC
TCCCACTAATAATTCTGAGG
>Rosalind_5959
CCATCGGTAGCGCATCCTTAGTCCAATTAAGTCCCTATCCAGGCGCTCCGCCGAAGGTCT
ATATCCATTTGTCAGCAGACACGC
>Rosalind_0808
CCACCCTCGTGGTATGGCTAGGCATTCAGGAACCGGAGAACGCTTCAGACCAGCCCGGAC
TGGGAACCTGCGGGCAGTAGGTGGAAT
    DATASET
    result = <<-RESULT
Rosalind_0808
60.919540
    RESULT
    it 'returns the ID of the string with the highest GC-content with content' do
      expect(Rosalind.new(data).gc).to eq(result.strip)
    end
  end

  # # Given:
  # #
  # describe '' do
  #   data = <<-DATASET
  #
  #   DATASET
  #   result = <<-RESULT
  #
  #   RESULT
  # end
  # it '' do
  #
  # end
end
