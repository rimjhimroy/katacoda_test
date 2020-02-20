`tar` stands for Tape Archive

The `tar` command saves many files together into a single tape or disk archive, and can restore individual files from the archive.  

The `-x` operand is used to extract files from an archive.
The `-v` operand is used to verbosely list the files that are processed.
The `-z` operand is used to filter the archive through gzip, a compression utility.
The `-f` operand is used to use the archive file.  

Type `ls`{{execute}} and press enter.

You will find notice that there is a compression tar file called `villains.tar` that we would like to untar (uncompress).  

Type `tar -xzvf villains.tar`{{execute}} and press enter.   

You will see that the files in the villains.tar archive got extracted into a directory called `villains` and the name of the file that got extracted into that folder is `README.txt` (as shown below)  
`root@20fd9d1980c9:/cybershaolin# tar -xzvf  villains.tar
villains/
villains/README.txt`  
