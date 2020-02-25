Install and load the very useful "ape" package that is required for calculating distance matrices from codon based alignment files.

<pre class="file" data-target="clipboard">
install.packages("ape")
library(ape)
</pre>

Type in the following commands to import the codon based alignment file for the gene "rbcl" in Rstudio
<pre class="file" data-target="clipboard">
bju=read.table("plastid_sequence_analysis/gff/Brassica-juncea.gff3",header=F,sep='\t')
</pre>

The annotation "gene" is present in the third column.
Now count the number of annotated "gene" in <em>Brassica juncea</em>
<pre class="file" data-target="clipboard">
nrow(bju[bju$V3=="gene",])
</pre>