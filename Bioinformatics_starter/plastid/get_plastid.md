Plastids contain non-recombining and maternally inherited loci. We are going to download their sequence from **eight** species and annotate them. 

Go to https://www.ncbi.nlm.nih.gov/nucleotide/ and search: 

1. Marchantia paleacea (NC_001319.1)
2. Brassica juncea (NC_028272.1)
3. Monotropa hypopitys (KU640958.1)
4. Oryza sativa (NC_031333.1) 
5. Nicotiana tabacum (NC_001879.2)
6. Helianthus annuus (NC_007977.1)
7. Triticum aestivum (NC_002762.1)
8. Zea Mayz (NC_001666.2)

Retrieve their complete chloroplast genome sequences as separate fasta files (i.e. select FASTA form and send to file)

Annotate each of these sequences using GeSeq [link](https://chlorobox.mpimp-golm.mpg.de/geseq.html). 

1. Upload all the above downloaded sequences in *FASTA file(s) to annotate* and select *circular*
2. In *Options* select *Generate codon-based alignments* and *Include references*
3. In *BLAT search* select *Annotate plastid IR*, *Annotate plastid trans-spliced rps12* and *Ignore genes annotated as locus tag*. Keep *Protein search identity* to 25 and *rRNA, tRNA, DNA search identity* to 85
4. In *3rd Party tRNA annotators* select *ARAGORN* and select *Plant chloroplast* in the genetic code
5. In the *BLAT Reference Sequences*, select *MPI-MP chloroplast references (Embryophyta CDS + rRNA)* 
6. In *Actions*, select: I have read and accept the Disclaimer and **Submit**

Wait for the results and download (save) the *GFF3* annotation table for *Annotation* of each of the plastid sequences.

Also, From the *GLOBAL* *Annotation*, download the *Codon based alignment* files and unzip them.