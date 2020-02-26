If you do not see the **four** panes typical of Rstudio, please go to *View* -> *Panes* -> *Show All Panes*  

Type in the following commands to import the annotation table of <em>Brassica juncea</em> in Rstudio  
<pre class="file" data-target="clipboard">
bju=read.table("plastid_sequence_analysis/gff/Brassica-juncea.gff3",header=F,sep='\t')
</pre>

The annotation "gene" is present in the third column.
Now count the number of annotated "gene" in <em>Brassica juncea</em>
<pre class="file" data-target="clipboard">
nrow(bju[bju$V3=="gene",])
</pre>

Now count the occurance of all the features in the third column.
<pre class="file" data-target="clipboard">
table(bju$V3)
</pre>

Can you do the same for plastid sequence of all other species? You can do one by one or create a loop.

**HINT:**
<pre class="file" data-target="clipboard">
file = list.files(path="plastid_sequence_analysis/gff",pattern="\\.gff3$") 
Output <- data.frame()
for(i in 1:length(file)){
  data <- read.table(paste("plastid_sequence_analysis/gff/",file[i],sep=''),header=F,sep='\t')
  Output[i,1] <- file[i]
  Output[i,2] <- nrow(data[data$V3=="gene",])
}
Output
</pre>

>>Q1: How many genes are annotated in <em>Nicotiana tabacum</em> <<
(*) 135
( ) 150
( ) 167

>>Q2: How many genes are annotated in <em>Monotropa hypopitys</em> <<
( ) 302
(*) 52
( ) 162

>>Q3: Oh no!!! Why are they so different? How can you explain this remarkable observation? <<