Repetitive elements include low-complexity DNA sequences and Transposable elements that are present in a genome. Here, we will analyse a type of interspersed repeates:long terminal repeat retrotransposons (LTR-RTs).  
See all the different types of repeat: [link](https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fnrg2165/MediaObjects/41576_2007_Article_BFnrg2165_Fig1_HTML.jpg?as=webp)  
See the life-cycle of LTR-RTs: [link](https://en.wikipedia.org/wiki/LTR_retrotransposon#/media/File:LTR_retrotransposon.png)

Explore your newly create UNIX environment.
We are in a virtual UNIX environment and an **an rstudio-server is being prepared for you**.  
Click the [Dashboard](https://[[HOST_SUBDOMAIN]]-8787-[[KATACODA_HOST]].environments.katacoda.com/) tab on the right to see the interface when it is ready. But before that, let's explore where we are.


I have uploaded two sequences named *Seq1.txt* and *Seq2.txt*
At the moment you have no other information about the sequences, except that they are DNA sequences.

But let's find out what they are!  

1. Go to « [http://gydb.org/index.php/Blast], paste the sequence Seq1 (12’390 bp) as query. (In your UNIX environment execute `grep -v ">" Seq1.txt | wc | awk '{print $3-$1}'`{{execute}} to count the number of base-pairs) 

2. Select “cores” as Database and Blastx as search program, keep search protein domains as all domains. Examine occurrences of protein domains INT (Integrase), RT (Reverse transcriptase), RNAseH, GAG and AP. 

>>Q1: What do stretches of annotation suggest about this locus? <<

3. Take the first occurrence and draw its structure, noting the position of start and end on the strand.

4. Do the same for other occurrences (Seq2, 17’188 bp). 

>>Q2: What is a Gypsy or a Copia element, justify? **HINT:** Refer again to [link](https://media.springernature.com/full/springer-static/image/art%3A10.1038%2Fnrg2165/MediaObjects/41576_2007_Article_BFnrg2165_Fig1_HTML.jpg?as=webp) <<

5. For each occurrence separately, extract the left flanking sequence (i.e. everything on the left of the first domain). Do the same for the right flanking sequence (i.e. right of the last domain).
**HINT:** Use 

6. Go to « [https://blast.ncbi.nlm.nih.gov/], select Nucleotide Blast, “Align two or more sequences”. Paste one sequence from step 5 as query and the other as subject, select “megablast” and Run Blast. Note the matching positions between the two sequences. 

>>Q3 What structure is it? Add this information in the diagram of LTR retrotransposons. <<

7. Note the Identity (%) from the blast result. Calculate the age since copies the LTR-RTs inserted using T=D/2t (T, time elapsed since the insertion; D, estimated LTR divergence = (100-%Identity)/100; t,  substitution rate per site per year = 7 × 10^−9 following Ossowski et al. 2010. Science). 

>>Q4 What is the principle of such molecular dating? Is this accurate (as opposed to the comparison of e.g. genes like PEP1-FLC)? <<

