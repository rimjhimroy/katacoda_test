Install and load the very useful "ape" package that is required for calculating distance matrices from codon-based multiple sequence alignment files.

<pre class="file" data-target="clipboard">
install.packages("ape")
library(ape)
</pre>

Type in the following commands to import the codon-based multiple sequence alignment file for the gene "rbcL" in Rstudio
<pre class="file" data-target="clipboard">
rbcl <- read.FASTA("plastid_sequence_analysis/codon_based_alignments/rbcL.fasta")
</pre>

Calculate pairwise nucleotide distances for each pair of sequences in the rbcL multiple sequence alignment
<pre class="file" data-target="clipboard">
d.rbcl <- dist.dna(rbcl, model = "raw",as.matrix=T)
View(d.rbcl)
</pre>

Calculate some summary statistics from the distance matrix
<pre class="file" data-target="clipboard">
d.rbcl1 <- dist.dna(rbcl, model = "raw")
summary(d.rbcl1)
</pre>

