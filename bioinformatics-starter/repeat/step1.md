
We are in a virtual UNIX environment and an **an rstudio-server is being prepared for you**.  
Click the [Dashboard](https://[[HOST_SUBDOMAIN]]-8787-[[KATACODA_HOST]].environments.katacoda.com/) tab on the right to see the interface when it is ready. But before that, let's explore where we are.

Open a new terminal using the "+" on the right.  
The `pwd` command tells you the current folder where you are.  
Type in `pwd`{{execute}}; `lsb_release -a`{{execute}}  
LSB stands for Linux Standard Base and  executing `lsb_release -a` command will give you OS specific information such as the Distributor, Description the Release number and the codename that is used to refer to this version of the Linux OS.  

Some plastid files were copied to your environment, let's see what those files are:
Now type in `ls`{{execute}}  
`ls` stands for list directory contents. It displays the names of files contained within a directory, as well as any requested, associated information.

Enter the folder plastid_sequence_analysis: `cd plastid_sequence_analysis`{{execute}}, and explore `ls`{{execute}}  
`cd` stands for Change Directory. What you just did was you changed your directory to the `plastid_sequence_analysis` directory and listed its content with `ls`. You can check by typing `pwd`{{execute}} and pressing enter.

As you see, I have copied the plastid fasta sequences along with annotation tables (gff files) for the eight species. Also you have the output GeSeq codon based alignments in the folder.  

Now let's go the Rstudio waiting for you in the Dashboard tab on the right.

