Install and load the very useful "ape" package that is required for calculating distance matrices from codon-based multiple sequence alignment files.

There are several commands that are available in base R, e.g., `read.table`, `table`,
and other commands that you saw in the previous exercise.

However, there are several R packages, collections of functions and data sets developed by the ever growing R community. One of such packages is `ape` which we will use in this exercise. To get any such external packages you need to install it forst with the `install.packages` command. Here, `ape` is already installed for you, so you don't need to run `install.packages("ape")`, but you have to load it with `library(ape)`

<pre class="file" data-target="clipboard">
library(ape)
</pre>

Type in the following commands to import the codon-based multiple sequence alignment file for the gene "rbcL" in Rstudio
<pre class="file" data-target="clipboard">
rbcl <- read.dna("plastid_sequence_analysis/codon_based_alignments/rbcL.fasta",format="fasta")
</pre>

Calculate pairwise nucleotide distances for each pair of sequences in the rbcL multiple sequence alignment
<pre class="file" data-target="clipboard">
d.rbcl <- dist.dna(rbcl, model = "raw",as.matrix=T)
View(d.rbcl)
</pre>

You can find out more about the commands we are executing with a `?` before the command. For instance, `?dist.dna` gives you all the details about the command `dist.dna` in ape.  
Inside the paranthesis, are all the parameters that you want to set. For `model = "raw"` is simply the proportion or the number of sites that differ between each pair of sequences. You can check more details like this in the "Details" section in `?dist.dna`  

Calculate some summary statistics from the distance matrix.  
<pre class="file" data-target="clipboard">
d.rbcl1 <- dist.dna(rbcl, model = "raw")
summary(d.rbcl1)
</pre>

Let's look into matK now.  
<pre class="file" data-target="clipboard">
matk <- read.dna("plastid_sequence_analysis/codon_based_alignments/matK.fasta",format="fasta")
d.matk <- dist.dna(matk, model = "raw",as.matrix=T)
View(d.matk)
d.matk1 <- dist.dna(matk, model = "raw")
summary(d.matk1)
</pre>

>>Q1: Which gene is fast evolving? <<
( ) rbcL
(*) matK

