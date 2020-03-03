Repetitive elements include low-complexity DNA sequences and Transposable elements that are present in a genome. Here, we will analyse a type of interspersed repeates:long terminal repeat retrotransposons (LTR-RTs).  
See all the different types of repeat: [link](https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fnrg2165/MediaObjects/41576_2007_Article_BFnrg2165_Fig1_HTML.jpg?as=webp)  
See the life-cycle of LTR-RTs: [link](https://en.wikipedia.org/wiki/LTR_retrotransposon#/media/File:LTR_retrotransposon.png)

We are in **a virtual UNIX environment** and an **an rstudio-server is being prepared for you**.  
Explore your newly create UNIX environment.

Open a new terminal using the "+" on the right.  
The `pwd` command tells you the current folder where you are.  
Type in `pwd`{{execute}}

Some DNA sequence files were copied to your environment, let's see what those files are:
Now type in `ls`{{execute}}; `cd repeat_files`{{execute}}; `ls`{{execute}}

As you can see, I have uploaded two sequences named *Seq1.txt* and *Seq2.txt*
At the moment you have no other information about the sequences, except that they are DNA sequences.  

In UNIX it is very convenient to get some other information from your files. For instance, to count the number of base-pairs you just have to execute `grep -v ">" Seq1.txt | wc | awk '{print $3-$1}'`{{execute}}.  
Do the same for `Seq2.txt`.  

In the *Katacoda Editor*, browse the *Seq1.txt* and *Seq2.txt* files.  

Now let's find out what they are by annotating them!  
* Here in the [link](https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fnrg2165/MediaObjects/41576_2007_Article_BFnrg2165_Fig1_HTML.jpg?as=webp), you see that the most of the repeats code for some proteins. We can search for those protein sequences using a database of protein coding domains.
* Let's first download those core protein coding domains from gydb.org [http://gydb.org/images/1/1a/Cores.zip], and unzip.
* Copy the content of *Seq1.txt* from the *Katacoda Editor* to your clipboard. Go to « [NCBI blastx tool](https://blast.ncbi.nlm.nih.gov/Blast.cgi?PROGRAM=blastx&PAGE_TYPE=BlastSearch&BLAST_SPEC=blast2seq&LINK_LOC=blasttab), paste the sequence (12’390 bp) as query. 
* Select *Align two or more sequences*
* Upload the extracted core protein coding domains as *Subject*
* Expand the *Algorithm parameters* and set the *Max target sequences* to 250
* Run *BLAST* and wait for the results
* Examine occurrences of protein domains INT (Integrase), RT (Reverse transcriptase), RNAseH, GAG and AP. 
**Hint** Go to the *Graphic Summary*, hover over each of the hits against the query sequence to get an idea about the annotation of the protein domains of the repeat sequence. Also, download the *Hit Table csv* from the *Download All* link.


>>Q1: What do stretches of annotation suggest about this locus? <<

<br/>

* Sort the *Hit Table csv* based on the *bit score* (Column 10) in descending order (largest to smallest) in excel, ignore everything with *bit score* less than 80, select the first occurring hit per protein coding domain with the largest bit score and note its *query start* and *query end* values (Column 7 and 8). 
* Draw its structure, noting the position of start and end on the strand.

* Do the same for *Seq2.txt* (17’188 bp). 

>>Q2: What is a Gypsy or a Copia element, justify? << 
<br/>

**HINT:** Refer again to [link](https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fnrg2165/MediaObjects/41576_2007_Article_BFnrg2165_Fig1_HTML.jpg?as=webp)


* For each occurrence separately, extract the left flanking sequence (i.e. everything on the left of the first domain). Do the same for the right flanking sequence (i.e. right of the last domain).
**HINT:** To extract from the start to 100th base pair execute `awk '{if (/^>/) print $0"_Left"; else print(substr($1,1,10))}' Seq1.txt > Seq1_left.fasta`  
To extract from the 1000th base pair to the end of the sequence execute `awk '{if (/^>/) print $0"_Right"; else print(substr($1,1000,length($1)))}' Seq1.txt > Seq1_right.fasta`  
**Remember to adjust the values in the substr() according to the position of the start of the first domain and end of the last domain.**

* Go to « [https://blast.ncbi.nlm.nih.gov/], select Nucleotide Blast, “Align two or more sequences”. Paste one sequence from the previous step as query and the other as subject, select “megablast” and Run Blast. Note the matching positions between the two sequences. 

>>Q3 What structure is it? Add this information in the diagram of LTR retrotransposons. <<

<br/>

* Note the Identity (%) from the blast result. Calculate the age since copies the LTR-RTs inserted using T=D/2t (T, time elapsed since the insertion; D, estimated LTR divergence = (100-%Identity)/100; t,  substitution rate per site per year = 7 × 10^−9 following Ossowski et al. 2010. Science). 

>>Q4 What is the principle of such molecular dating? Is this accurate (as opposed to the comparison of e.g. genes like PEP1-FLC)? <<

<br/>

