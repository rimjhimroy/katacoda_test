Difficult eh?  

Now what if you are provided with a full chromosome and you have to annotate it? 

Open a new terminal using the "+" on the right. In the folder `repeat_files`, you can find a folder `chrom` by executing `cd repeat_files/chrom`{{execute}} which has the whole chromosome 2 sequence of *Arabis alpina*. Check the number of bases in this file with `grep -v ">" Arabis_alpina_chr2.fasta | wc | awk '{print $3-$1}'`

Thankfully, there are several UNIX based pipelines already available that automates all the tasks you did in a single command.  

One of such pipeline is [Extensive de-novo TE Annotator](https://genomebiology.biomedcentral.com/articles/10.1186/s13059-019-1905-y) and we will launch it on the chromosome2 sequence.

* To run this command in your UNIX environment, first execute:`docker image ls`{{execute}} to see if *kapeel/edta* is ready for use. If it is present then execute `docker run -v $PWD:/in -w /in -it --entrypoint /bin/bash kapeel/edta`{{execute}}. **Note** run this inside the `chrom` folder to enable the execution of the next codes as such. 

* Execute `perl /EDTA/EDTA_raw.pl --genome Arabis_alpina_chr2.fasta --type ltr --threads 2`{{execute}}. This might take 5-10 mins, so wait for it to finish. Alternatively, the results of this part are also provided in the `repeat_files/chrom/res` folder. Go to this folder or the `repeat_files/chrom/Arabis_alpina_chr2.fasta.mod.EDTA.raw` folder produced by your run.

* View the file `Arabis_alpina_chr2.fasta.mod.LTR.intact.fa.gff3` in the *Katacoda Editor*. You can see that the table already has identified whether the LTR-RTs belong to the *Gypsy* or *Copia* superfamily (some elements that the pipeline was not able to classify has been named as LTR/Unknown).

* To process the file properly in R replace the occurance of `#` with `;` using the command: `sed -i 's/#/;/g' Arabis_alpina_chr2.fasta.mod.LTR.intact.fa.gff3`{{execute}}
* From the above annotation table (gff3 file) extract only those lines with the `ltr_identity` values using the command: `grep "ltr_identity" Arabis_alpina_chr2.fasta.mod.LTR.intact.fa.gff3 > Arabis_alpina_LTRRT_annotation.gff3`{{execute}};


Let's analyse these data in Rstudio.


