Install and load the very useful "ape" package that is required for calculating distance matrices from codon-based multiple sequence alignment files.

There are several commands that are available in base R, e.g., `read.table`, `table`,
and other commands that you saw in the previous exercise.

However, there are several R packages, collections of functions and data sets developed by the ever growing R community. One of such packages is `ape` which we will use in this exercise. To get any such external packages you need to install it forst with the `install.packages` command. Here, `ape` and `adegenet` is already installed for you, so you don't need to run `install.packages("ape")`, but you have to load it with `library(ape)`

<pre class="file" data-target="clipboard">
library(ape)
library(adegenet)
</pre>

Type in the following commands to import the codon-based multiple sequence alignment file for the gene "rbcL" in Rstudio

To view the alignments you can use the web application: *NCBI MSA viewer* (https://www.ncbi.nlm.nih.gov/projects/msaviewer/)  

<pre class="file" data-target="clipboard">
rbcl <- read.dna("plastid_sequence_analysis/codon_based_alignments/rbcL.fasta",format="fasta")
</pre>

Calculate pairwise nucleotide distances for each pair of sequences in the rbcL multiple sequence alignment
<pre class="file" data-target="clipboard">
d.rbcl <- dist.dna(rbcl, model = "raw")
temp.rbcl <- as.data.frame(as.matrix(d.rbcl))
table.paint(temp.rbcl, cleg = 1, clabel.row = .7, clabel.col = .7)
</pre>

You can find out more about the commands we are executing with a `?` before the command. For instance, `?dist.dna` gives you all the details about the command `dist.dna` in ape.  
Inside the paranthesis, are all the parameters that you want to set. For `model = "raw"` is simply the proportion or the number of sites that differ between each pair of sequences. You can check more details like this in the "Details" section in `?dist.dna`  

Calculate some summary statistics from the distance matrix.  
<pre class="file" data-target="clipboard">
mean(d.rbcl)
sd(d.rbcl)
</pre>

Let's look into matK now.  
<pre class="file" data-target="clipboard">
matk <- read.dna("plastid_sequence_analysis/codon_based_alignments/matK.fasta",format="fasta")
d.matk <- dist.dna(matk, model = "raw")
temp.matk <- as.data.frame(as.matrix(d.matk))
table.paint(temp.matk, cleg = 1, clabel.row = .7, clabel.col = .7)
mean(d.matk)
sd(d.matk)
</pre>

>>Q1: Which gene is fast evolving? <<
( ) rbcL
(*) matK

>>Q2: Can you find the genes giving the highest mean distance among the species? <<  

**HINT:** Use the same loop method as in the previous exercise where we count the number of annotated genes. Repeat the steps for atleast *rps16* and *rpl14*

>>Q3: Do all the genes show a similar pattern? How can you explain your observations? <<  

>>Q4: What can be expected for different loci along the plastid genome across plants (see Shaw et al. 2005. Am J Bot)? Should studies be necessarily based on more than one plastid locus? <<  

