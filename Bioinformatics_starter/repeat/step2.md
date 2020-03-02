Click this [Rstudio](https://[[HOST_SUBDOMAIN]]-8787-[[KATACODA_HOST]].environments.katacoda.com/) link to see the interface when it is ready. 

Let's load some functions that will help us to parse the gff files

<pre class="file" data-target="clipboard">
source("repeat_files/.source/parseGFF3.R")
</pre>

Now let's import the `copia.gff3` file that we prepared.

<pre class="file" data-target="clipboard">
copia <- gffRead("repeat_files/chrom/Arabis_alpina_chr2.fasta.mod.EDTA.raw/copia.gff3")
copia$perName <- getAttributeField(gff$attributes, "ID")
copia$perID <- getAttributeField(gff$attributes, "ltr_identity")
</pre>

Let's do the same with the `gypsy.gff3` file

<pre class="file" data-target="clipboard">
gypsy <- gffRead("repeat_files/chrom/Arabis_alpina_chr2.fasta.mod.EDTA.raw/gypsy.gff3")
gypsy$perName <- getAttributeField(gff$attributes, "ID")
gypsy$perID <- getAttributeField(gff$attributes, "ltr_identity")
</pre>

>>Q1: How many LTR-RTs are annotated as Copia and how many as Gypsy in the chromosome2 of Arabis alpina? <<

<br/>