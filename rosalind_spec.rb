# encoding: utf-8

require_relative 'rosalind'
require 'coveralls'

Coveralls.wear!

describe Rosalind do
  # Given: A DNA string of length at most 1000 nt.
  # http://rosalind.info/problems/dna
  describe 'DNA: Counting DNA Nucleotides' do
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
  describe 'RNA: Transcribing DNA into RNA' do
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
end
