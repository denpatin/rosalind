Rosalind problems
=================

My endeavor to solve [Rosalind problems](http://rosalind.info/problems/list-view/) with [Ruby](https://www.ruby-lang.org), [Crystal](https://crystal-lang.org), [Go](https://golang.org), and [Java](https://java.com).

## How to Run

`./main.sh {LANG} {TASK} {INPUT}`

* {LANG}: &nbsp;Currently only `ruby` or `crystal` are supported.
* {TASK}: &nbsp;&nbsp;The name of one of the below listed tasks, e.g. `dna` or `gc`.
* {INPUT}: Either a path to the file with the input data, or the input data itself.

Usage examples:

`./main.sh ruby dna AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC`

`./main.sh crystal dna ~/Downloads/rosalind_dna.txt`

## Problems and Solutions

|Problem title|Solution file|
|:-----------:|:-----------:|
|Counting DNA Nucleotides|[Ruby](dna.rb), [Crystal](dna.cr), [Go](dna.go), [Java](Dna.java)|
|Transcribing DNA into RNA|[Ruby](rna.rb)|
|Complementing a Strand of DNA|[Ruby](revc.rb)|
|Rabbits and Recurrence Relations|[Ruby](fib.rb)|
|Computing GC Content|[Ruby](gc.rb), [Crystal](gc.cr)|
|Counting Point Mutations|[Ruby](hamm.rb)|
|Mendel's First Law||
|Translating RNA into Protein||
|Finding a Motif in DNA||
|Mortal Fibonacci Rabbits||
|Consensus and Profile||
|Overlap Graphs||
|Calculating Expected Offspring||
|Finding a Shared Motif||
|Independent Alleles||
|Finding a Protein Motif||
|Inferring mRNA from Protein||
|Open Reading Frames||
|Enumerating Gene Orders||
|Calculating Protein Mass||
|Locating Restriction Sites||
|RNA Splicing||
|Enumerating k-mers Lexicographically||
|Longest Increasing Subsequence||
|Genome Assembly as Shortest Superstring||
|Perfect Matchings and RNA Secondary Structures||
|Partial Permutations||
|Introduction to Random Strings||
|Enumerating Oriented Gene Orderings||
|Finding a Spliced Motif||
|Transitions and Transversions||
|Completing a Tree||
|Catalan Numbers and RNA Secondary Structures||
|Error Correction in Reads||
|Counting Phylogenetic Ancestors||
|k-Mer Composition||
|Speeding Up Motif Finding||
|Finding a Shared Spliced Motif||
|Ordering Strings of Varying Length Lexicographically||
|Maximum Matchings and RNA Secondary Structures||
|Creating a Distance Matrix||
|Reversal Distance||
|Matching Random Motifs||
|Counting Subsets||
|Introduction to Alternative Splicing||
|Edit Distance||
|Expected Number of Restriction Sites||
|Motzkin Numbers and RNA Secondary Structures||
|Distances in Trees||
|Interleaving Two Motifs||
|Introduction to Set Operations||
|Sorting by Reversals||
|Inferring Protein from Spectrum||
|Introduction to Pattern Matching||
|Comparing Spectra with the Spectral Convolution||
|Creating a Character Table||
|Constructing a De Bruijn Graph||
|Edit Distance Alignment||
|Inferring Peptide from Full Spectrum||
|Independent Segregation of Chromosomes||
|Finding Disjoint Motifs in a Gene||
|Finding the Longest Multiple Repeat||
|Newick Format with Edge Weights||
|Wobble Bonding and RNA Secondary Structures||
|Counting Disease Carriers||
|Creating a Character Table from Genetic Strings||
|Counting Optimal Alignments||
|Counting Unrooted Binary Trees||
|Global Alignment with Scoring Matrix||
|Genome Assembly with Perfect Coverage||
|Matching a Spectrum to a Protein||
|Quartets||
|Using the Spectrum Graph to Infer Peptides||
|Encoding Suffix Trees||
|Character-Based Phylogeny||
|Counting Quartets||
|Enumerating Unrooted Binary Trees||
|Genome Assembly Using Reads||
|Global Alignment with Constant Gap Penalty||
|Linguistic Complexity of a Genome||
|Local Alignment with Scoring Matrix||
|Inferring Genotype from a Pedigree||
|Maximizing the Gap Symbols of an Optimal Alignment||
|Identifying Maximal Repeats||
|Multiple Alignment||
|Creating a Restriction Map||
|Counting Rooted Binary Trees||
|Sex-Linked Inheritance||
|Phylogeny Comparison with Split Distance||
|The Wright-Fisher Model of Genetic Drift||
|Alignment-Based Phylogeny||
|Assessing Assembly Quality with N50 and N75||
|Fixing an Inconsistent Character Set||
|Wright-Fisher's Expected Behavior||
|The Founder Effect and Genetic Drift||
|Global Alignment with Scoring Matrix and Affine Gap Penalty||
|Genome Assembly with Perfect Coverage and Repeats||
|Overlap Alignment||
|Quartet Distance||
|Finding a Motif with Modifications||
|Semiglobal Alignment||
|Finding All Similar Motifs||
|Local Alignment with Affine Gap Penalty||
|Isolating Symbols in Alignments||
|Identifying Reversing Substitutions||
