Type in the following commands to import the annotation table of __Brassica juncea__ in R
<pre class="file" data-target="clipboard">
bju=read.table("plastid_sequence_analysis/gff/Brassica-juncea.gff3",header=F,sep='\t')
</pre>

The annotation "gene" is present in the third column.
Now count the number of annotated "gene" in __Brassica juncea__
<pre class="file" data-target="clipboard">
nrow(bju[bju$V3=="gene",])
</pre>

Now count the occurance of all the features in the third column.
<pre class="file" data-target="clipboard">
table(bju$V3)
</pre>

Can you do the same for plastid sequence of all other species? You can do one by one or create a loop.