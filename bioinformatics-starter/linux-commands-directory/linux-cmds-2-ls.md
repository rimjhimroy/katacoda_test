`ls` stands for list directory contents.  

The `ls` command displays the names of files contained within a directory, as well as any requested, associated information.

Type `ls`{{execute}} and hit enter.

You should see several directories. One directory that is of interest that we will use for our learning is the `cybershaolin` directory.

But do you see a folder called `secrets` listed?

__Hidden Files__
Files that are named with a dot `(.)` are hidden and not shown when you run the `ls` command.
To see hidden files, we need to modify the `ls` command with some additional information. This additional information that is added to a Linux command is called an operand.

Type `ls -a`{{execute}} and press enter.
The `-a` operands will list directory entries whose names begin with a dot (.) and are hidden.
You should see now see a directory called `.secrets`.

Another operand that is often used with the `ls` command is the `-l` operand.
The `-l` operand lists the file in long format. If the output is to a terminal, a total sum for all the file sizes is output on a line before the long listing.  

Type `ls -la`{{execute}} and press enter.
If the -l option is given, the following information is displayed for each file:
- file mode,
- number of links,
- owner name,
- group name,
- number of bytes in the file,
- abbreviated month,
- day-of-month file was last modified,
- hour file last modified,
- minute file last modified,
- and the pathname.  

In addition, for each directory whose contents are displayed, the total number of 512-byte blocks used by the files in the directory is displayed on a line by itself, immediately before the information for the files in the directory.
