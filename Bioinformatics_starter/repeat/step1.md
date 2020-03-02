Difficult eh?  

Now what if you are provided with a full chromosome and you have to annotate them? 

Open a new terminal using the "+" on the right. In the folder `repeat_files`, you can find a folder `chrom`, which has the whole chromosome 2 sequence of *Arabis alpina*. Check the number of bases in this file with `grep -v ">" Arabis_alpina_chr2.fasta | wc | awk '{print $3-$1}'`

Thankfully there are several UNIX based pipelines already available that automates all the tasks you did in a single command.  

One of such pipeline is Extensive de-novo TE Annotator [https://genomebiology.biomedcentral.com/articles/10.1186/s13059-019-1905-y] and we will launch it on the chromosome2 sequence.


Click the [Dashboard](https://[[HOST_SUBDOMAIN]]-8787-[[KATACODA_HOST]].environments.katacoda.com/) to open Rstudio waiting for you to process the annotations.

